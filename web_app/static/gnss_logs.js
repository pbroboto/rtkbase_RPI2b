// gnss_logs.js — GNSS Logger frontend logic
// RTKBase V3 — Prajuab custom implementation
// Handles start/stop OBSVMB logging from UM980 COM2 via /dev/ttyUSB0

var socket;
var isLogging = false;

// ── Action formatter for bootstrap-table ──────────────────────────────────────

function actionFormatter(value, row, index) {
    return value;
}

window.operateEvents = {
    'click #gnsslog_delete': function (e, value, row, index) {
        document.querySelector('#filename').textContent = row.name;
        $('#deleteModal').modal();
        $('#confirm-delete-button').data.row = row;
    }
};

$('#confirm-delete-button').on("click", function () {
    socket.emit("delete gnss log", $('#confirm-delete-button').data.row);
});

// ── Logging controls ──────────────────────────────────────────────────────────

function startLogging() {
    socket.emit("start gnss logging");
    document.getElementById("logging-msg").textContent = "Starting logger...";
}

function stopLogging() {
    socket.emit("stop gnss logging");
    document.getElementById("logging-msg").textContent = "Stopping logger...";
}

function setLoggingState(active, msg) {
    isLogging = active;
    var badge = document.getElementById("logging-status-badge");
    var startBtn = document.getElementById("start-logging-btn");
    var stopBtn = document.getElementById("stop-logging-btn");
    var msgElt = document.getElementById("logging-msg");

    if (active) {
        badge.className = "badge badge-danger";
        badge.textContent = "● Recording";
        startBtn.style.display = "none";
        stopBtn.style.display = "inline-block";
    } else {
        badge.className = "badge badge-secondary";
        badge.textContent = "Stopped";
        startBtn.style.display = "inline-block";
        stopBtn.style.display = "none";
    }
    if (msg) {
        msgElt.textContent = msg;
    }
}

// ── Document ready ────────────────────────────────────────────────────────────

$(document).ready(function () {

    namespace = "/test";
    socket = io.connect(namespace);

    socket.on("connect", function () {
        socket.emit("browser connected", {data: "I'm connected"});
        // Get current logging status and file list on page load
        socket.emit("get gnss logging status");
        socket.emit("get gnss logs list");
    });

    socket.on('disconnect', function () {
        console.log('disconnected');
    });

    // ── Logging status response ───────────────────────────────────────────────

    socket.on("gnss logging status", function (msg) {
        var data = JSON.parse(msg);
        if (data.active) {
            setLoggingState(true, "Logging to: " + data.filename);
        } else {
            setLoggingState(false, "");
        }
    });

    socket.on("gnss logging started", function (msg) {
        var data = JSON.parse(msg);
        if (data.result === "ok") {
            setLoggingState(true, "Logging to: " + data.filename);
        } else {
            setLoggingState(false, "Error: " + data.msg);
        }
    });

    socket.on("gnss logging stopped", function (msg) {
        var data = JSON.parse(msg);
        setLoggingState(false, "Stopped. File saved: " + data.filename);
        // Refresh file list after stop
        socket.emit("get gnss logs list");
    });

    // ── File list ─────────────────────────────────────────────────────────────

    socket.on("available gnss logs", function (msg) {

        var actionDeleteElt = document.createElement("a");
        actionDeleteElt.href = "#";
        actionDeleteElt.setAttribute("title", "delete");
        actionDeleteElt.setAttribute("id", "gnsslog_delete");
        actionDeleteElt.setAttribute("data-toggle", "modal");
        actionDeleteElt.classList.add("mx-1");
            var deleteImg = document.createElement("img");
            deleteImg.setAttribute("src", "../static/images/trash.svg");
            deleteImg.setAttribute("alt", "delete");
            deleteImg.setAttribute("title", "Delete");
            deleteImg.setAttribute("width", "25");
            deleteImg.setAttribute("height", "25");
        actionDeleteElt.appendChild(deleteImg);

        var actionDownloadElt = document.createElement("a");
        actionDownloadElt.href = "#";
        actionDownloadElt.setAttribute("title", "download");
        actionDownloadElt.setAttribute("id", "gnsslog_download");
        actionDownloadElt.classList.add("mx-1");
            var downloadImg = document.createElement("img");
            downloadImg.setAttribute("src", "../static/images/download.svg");
            downloadImg.setAttribute("alt", "download");
            downloadImg.setAttribute("title", "Download");
            downloadImg.setAttribute("width", "25");
            downloadImg.setAttribute("height", "25");
        actionDownloadElt.appendChild(downloadImg);

        for (var log of msg) {
            actionDownloadElt.href = "/gnss_logs/download/" + log.name;
            log['actions'] = actionDownloadElt.outerHTML + actionDeleteElt.outerHTML;
        }

        $('#gnsslogtable').bootstrapTable('removeAll');
        $('#gnsslogtable').bootstrapTable('load', msg);
    });

    socket.on("gnss log deleted", function (msg) {
        socket.emit("get gnss logs list");
    });

});
