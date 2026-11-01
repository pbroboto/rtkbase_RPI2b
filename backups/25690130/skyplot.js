// Skyplot visualization for satellite data
class Skyplot {
    constructor(canvasId) {
        this.canvas = document.getElementById(canvasId);
        if (!this.canvas) {
            console.error('Skyplot canvas not found:', canvasId);
            return;
        }

        this.ctx = this.canvas.getContext('2d');
        this.updateSize();

        // Constellation colors
        this.colors = {
            'GPS': '#1f77b4',
            'GLONASS': '#ff7f0e',
            'Galileo': '#2ca02c',
            'BeiDou': '#d62728',
            'Unknown': '#9467bd'
        };

        this.satellites = [];
        this.updateInterval = null;

        // Resize on window resize
        window.addEventListener('resize', () => {
            this.updateSize();
            if (this.satellites.length > 0) {
                this.draw();
            }
        });
    }

    updateSize() {
        // Get container width
        const container = this.canvas.parentElement;
        const size = Math.min(container.clientWidth, 600); // Max 600px

        // Get device pixel ratio for high-DPI displays
        const dpr = window.devicePixelRatio || 1;

        // Set display size (CSS pixels)
        this.canvas.style.width = size + 'px';
        this.canvas.style.height = size + 'px';

        // Set actual canvas size (scaled for high-DPI)
        this.canvas.width = size * dpr;
        this.canvas.height = size * dpr;

        // Scale context to match
        this.ctx.scale(dpr, dpr);

        // Use logical size for drawing
        this.width = size;
        this.height = size;
        this.centerX = this.width / 2;
        this.centerY = this.height / 2;
        this.radius = Math.min(this.width, this.height) / 2 - 30;
    }

    start() {
        this.update();
        // Update every 5 seconds
        this.updateInterval = setInterval(() => this.update(), 5000);
    }

    stop() {
        if (this.updateInterval) {
            clearInterval(this.updateInterval);
        }
    }

    async update() {
        try {
            const response = await fetch('/api/satellites');
            this.satellites = await response.json();
            this.draw();
        } catch (error) {
            console.error('Error fetching satellites:', error);
        }
    }

    draw() {
        // Clear canvas
        this.ctx.clearRect(0, 0, this.width, this.height);

        // Draw background - dark like CHCNav
        this.ctx.fillStyle = '#1a3a52';  // Dark blue
        this.ctx.fillRect(0, 0, this.width, this.height);

        // Draw elevation circles (90°, 60°, 30°, 0°)
        this.drawElevationCircles();

        // Draw azimuth lines (N, E, S, W)
        this.drawAzimuthLines();

        // Draw compass labels
        this.drawCompassLabels();

        // Draw satellites
        this.drawSatellites();

        // Draw legend
        this.drawLegend();

        // Draw satellite count
        this.drawSatelliteCount();
    }

    drawElevationCircles() {
        const elevations = [0, 30, 60, 90];

        elevations.forEach(elev => {
            const r = this.elevationToRadius(elev);

            this.ctx.beginPath();
            this.ctx.arc(this.centerX, this.centerY, r, 0, 2 * Math.PI);
            this.ctx.strokeStyle = '#3a5a72';
            this.ctx.lineWidth = 1;
            this.ctx.stroke();

            // Label
            if (elev < 90) {
                this.ctx.fillStyle = '#ffffff';
                this.ctx.font = '12px Arial';
                this.ctx.textAlign = 'center';
                this.ctx.fillText(elev + '°', this.centerX, this.centerY - r - 5);
            }
        });
    }

    drawAzimuthLines() {
        const azimuths = [0, 90, 180, 270]; // N, E, S, W

        azimuths.forEach(azim => {
            const angle = (azim - 90) * Math.PI / 180; // Convert to math coords
            const x = this.centerX + this.radius * Math.cos(angle);
            const y = this.centerY + this.radius * Math.sin(angle);

            this.ctx.beginPath();
            this.ctx.moveTo(this.centerX, this.centerY);
            this.ctx.lineTo(x, y);
            this.ctx.strokeStyle = '#3a5a72';
            this.ctx.lineWidth = 1;
            this.ctx.stroke();
        });
    }

    drawCompassLabels() {
        const labels = [
            { text: 'N', azim: 0 },
            { text: 'E', azim: 90 },
            { text: 'S', azim: 180 },
            { text: 'W', azim: 270 }
        ];

        this.ctx.fillStyle = '#ffffff';
        this.ctx.font = 'bold 16px Arial';
        this.ctx.textAlign = 'center';
        this.ctx.textBaseline = 'middle';

        labels.forEach(label => {
            const angle = (label.azim - 90) * Math.PI / 180;
            const x = this.centerX + (this.radius + 20) * Math.cos(angle);
            const y = this.centerY + (this.radius + 20) * Math.sin(angle);

            this.ctx.fillText(label.text, x, y);
        });
    }

    drawSatellites() {
        this.satellites.forEach(sat => {
            const pos = this.satellitePosition(sat.azimuth, sat.elevation);

            // Draw satellite dot
            this.ctx.beginPath();
            this.ctx.arc(pos.x, pos.y, 5, 0, 2 * Math.PI);
            this.ctx.fillStyle = this.colors[sat.constellation] || this.colors['Unknown'];
            this.ctx.fill();
            this.ctx.strokeStyle = '#fff';
            this.ctx.lineWidth = 1;
            this.ctx.stroke();

            // Draw satellite ID
            this.ctx.fillStyle = '#ffffff';
            this.ctx.font = 'bold 11px Arial';
            this.ctx.textAlign = 'center';
            this.ctx.fillText(sat.sat_id, pos.x, pos.y - 10);

            // Draw SNR value
            this.ctx.fillStyle = '#00d9ff';
            this.ctx.font = 'bold 10px Arial';
            this.ctx.fillText(sat.snr, pos.x, pos.y + 18);
        });
    }

    drawLegend() {
        const x = 10;
        let y = 20;
        const constellations = ['GPS', 'GLONASS', 'Galileo', 'BeiDou'];

        this.ctx.font = '12px Arial';
        this.ctx.textAlign = 'left';

        constellations.forEach(constellation => {
            const count = this.satellites.filter(s => s.constellation === constellation).length;

            // Color box
            this.ctx.fillStyle = this.colors[constellation];
            this.ctx.fillRect(x, y - 8, 12, 12);

            // Label
            this.ctx.fillStyle = '#ffffff';
            this.ctx.fillText(`${constellation}: ${count}`, x + 18, y + 2);

            y += 18;
        });
    }

    drawSatelliteCount() {
        const total = this.satellites.length;

        this.ctx.fillStyle = '#ffffff';
        this.ctx.font = 'bold 14px Arial';
        this.ctx.textAlign = 'right';
        this.ctx.fillText(`Total: ${total} satellites`, this.width - 10, 20);
    }

    elevationToRadius(elevation) {
        // 90° elevation = center (radius 0)
        // 0° elevation = edge (radius = this.radius)
        return this.radius * (1 - elevation / 90);
    }

    satellitePosition(azimuth, elevation) {
        // Convert azimuth to math angle (0° = East, counterclockwise)
        // Satellite azimuth: 0° = North, clockwise
        const angle = (90 - azimuth) * Math.PI / 180;
        const r = this.elevationToRadius(elevation);

        return {
            x: this.centerX + r * Math.cos(angle),
            y: this.centerY - r * Math.sin(angle)
        };
    }
}

// Initialize skyplot when page loads
let skyplot = null;

document.addEventListener('DOMContentLoaded', function () {
    skyplot = new Skyplot('skyplot');
    if (skyplot.canvas) {
        skyplot.start();
    }
});

// Clean up on page unload
window.addEventListener('beforeunload', function () {
    if (skyplot) {
        skyplot.stop();
    }
});

// Clean up on page unload
window.addEventListener('beforeunload', function () {
    if (skyplot) {
        skyplot.stop();
    }
});