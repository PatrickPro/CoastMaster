/**
 * Created by patrickpro on 29/11/2015.
 */

// FIXME
var NO_WIFI_PRESENT = true;

var ws = null;
var wsUrl = "127.0.0.1";
var wsPort = "4080";

var MAXSPEED = 120;
var MAXDISTANCE = 200;
var LINETHICKNESS = 15;
var CARSCALE = 2;
var BARSCALE = 15;

var CANVAS_WIDTH = 1280;
//var CANVAS_HEIGHT = 720; // for Sony Z3c
var CANVAS_HEIGHT = 768; // for Nexus4

var lastDistanceToSign = 0;
var lastSpeedLimit = 0;
var clickCount = 0;

//COLORS
var lightgrey = "#c9c8c8"
var grey = "#333132";
var blue = "#0e95e6";
var red = "#fc5454";
var black = "#000000";
var bgGreyDark = "#333132";
var bgGreyLight = "#393738";
var bgGreyDarkFont = "#2d2c2d";
var bgGreyLightFont = "#413f40";

var zIndex = 0;
var stage = null;
var currentSpeedText = new createjs.Text("ERROR", "160px Roboto", lightgrey);
var bgSpeedUnit = new createjs.Text("KM/H", "20px Roboto", lightgrey);
var speedRect = new createjs.Shape();
var rowheightOffset = 0;

var currentMessage = new receivedDataPacket();


/* This automatically gets the middleware IP address if it was uploaded correctly by the nodeJS middleware as a fall back it prompts for the IP address */
if (NO_WIFI_PRESENT) {
    $(document).ready(function () {
        $.get('http://rg.proppe.me/ipaddress', function (newIP) {
            if (newIP != null && ValidateIPaddress(newIP)) {
                wsUrl = newIP;
                console.log("Automatically set WS server IP to " + newIP);
                currentSpeedText.text = newIP;
                updateSpeedo();
                openWebsocket(wsUrl, wsPort);
            } else {
                promptForIP();
                openWebsocket(wsUrl, wsPort);
            }
        });
    });
} else {
    promptForIP();
    openWebsocket(wsUrl, wsPort);
}

function openWebsocket(ip, port) {
    if (ws != null) {
        ws.close(1000);
    }
    try {
        ws = new ReconnectingWebSocket("ws://" + ip + ":" + port + "/");
        ws.automaticOpen = true;
    } catch (exception) {
        console.log("Error: " + exception);
        currentSpeedText.text = "WS Error."
    }
    ws.onmessage = function (event) {
        var msg = event.data.split(";");
        if (msg.length == 8 || msg.length == 10) {

            // check for time order, make sure that middleware sends timestamp at THAT exact position e.g. msg[6]
            if (!msg[6] > currentMessage.time) {
                console.log("Old websocket msg received - skipping message!");
                return;
            }

            lastDistanceToSign = currentMessage.currentDistance;
            lastSpeedLimit = currentMessage.currentSpeedLimit;
            currentMessage.currentSpeed = parseFloat(msg[0]);
            currentMessage.currentSpeedLimit = parseInt(msg[1]);
            currentMessage.nextSpeedLimit = parseInt(msg[2]);
            currentMessage.currentDistance = parseFloat(msg[3]);
            currentMessage.gasPedal = parseFloat(msg[4]);
            currentMessage.brakePedal = parseFloat(msg[5]);
            currentMessage.realtime = true; // not needed for plain speedometer
            currentMessage.time = parseFloat(msg[6]);

            handleNewData(currentMessage);
        } else {
            console.log("Message length mismatch! Length: " + msg.length + " msg: " + msg);
        }
        // update debug info with latest received values
        var debugInfo = document.getElementById("debugInfo");
        debugInfo.innerHTML = "currentSpeed: " + currentMessage.currentSpeed + " - currentDistance: " + currentMessage.currentDistance + " - lastDistance: " + currentMessage.lastDistanceValue + " - currentSpeedLimit: " + currentMessage.currentSpeedLimit + " - nextSpeedLimit: " + currentMessage.nextSpeedLimit + " - gasPedal: " + currentMessage.gasPedal + " - brakePedal: " + currentMessage.brakePedal + " - IP: " + wsUrl;
    };
    ws.onclose = function () {
        console.log("WS closed");
        ws = new WebSocket("ws://" + wsUrl + ":" + wsPort + "/");
    };

    ws.onopen = function () {
        console.log("WS connected (" + wsUrl + ":" + wsPort + ")");
    };
    ws.onerror = function (event) {
        console.log("WS error: " + event);
    }
}


/*
 Add a click event listener to the main HTML5 canvas element
 counts the clicks and
 a) every 5 clicks it shows debug information below speedo
 b) every 11 clicks it prompts the user to modify the speedometer constants
 calls setupCanvas() at the end */
function init() {
    document.body.style.background = grey;

    document.getElementById("speedoCanvas").addEventListener("click", function () {
        clickCount++
        if (clickCount % 5 == 0) {
            document.getElementById("debugInfo").style.display = 'block';
            var debugInfo = document.getElementById("debugInfo");
            debugInfo.innerHTML = "currentSpeed: " + currentMessage.currentSpeed + " - currentDistance: " + currentMessage.currentDistance + " - lastDistance: " + currentMessage.lastDistanceValue + " - currentSpeedLimit: " + currentMessage.currentSpeedLimit + " - nextSpeedLimit: " + currentMessage.nextSpeedLimit + " - gasPedal: " + currentMessage.gasPedal + " - brakePedal: " + currentMessage.brakePedal + " - IP: " + wsUrl;
        } else {
            document.getElementById("debugInfo").style.display = 'none';
        }
        if (clickCount % 11 == 0) {
            promptForIP();
            openWebsocket(wsUrl, wsPort);
            var maxSpeed = prompt("MAXSPEED", MAXSPEED);
            if (maxSpeed != null && maxSpeed > 0 && maxSpeed < 9000) {
                MAXSPEED = parseInt(maxSpeed);
                console.log("Manually set MAXSPEED to " + MAXSPEED);
            }
            var maxDist = prompt("MAXDISTANCE", MAXDISTANCE);
            if (maxDist != null && maxDist > 0 && maxDist < 9000) {
                MAXDISTANCE = parseInt(maxDist);
                console.log("Manually set MAXDISTANCE to " + MAXDISTANCE);
            }
            var lineThickness = prompt("LINETHICKNESS", LINETHICKNESS);
            if (lineThickness != null && lineThickness > 0 && lineThickness < 9000) {
                LINETHICKNESS = parseInt(lineThickness);
                console.log("Manually set LINETHICKNESS to " + LINETHICKNESS);
            }
            var carScale = prompt("CARSCALE", CARSCALE);
            if (carScale != null && carScale > 0 && carScale < 9000) {
                CARSCALE = parseInt(carScale);
                console.log("Manually set CARSCALE to " + CARSCALE);
            }
            var barScale = prompt("BARSCALE", BARSCALE);
            if (barScale != null && barScale > 0 && barScale < 9000) {
                BARSCALE = parseInt(barScale);
                console.log("Manually set BARSCALE to " + BARSCALE);
            }
        }
        // reset to prevent (very unlikely) overflow
        if (clickCount > 100) {
            clickCount = 0;
        }
    });
    // now setup the canvas and basic speedometer
    setupCanvas();
}

/* init easelJS stage & add basic speedometer */
function setupCanvas() {

    stage = new createjs.Stage("speedoCanvas");
    speedRect.graphics.beginFill("DeepSkyBlue").rect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
    speedRect.alpha = 0.6;
    speedRect.y = CANVAS_HEIGHT - 2;
    addChildToStage(speedRect);
    currentSpeedText.x = CANVAS_WIDTH / 2;
    currentSpeedText.y = CANVAS_HEIGHT / 2; // random position
    currentSpeedText.textAlign = "center";
    addChildToStage(currentSpeedText);
    currentSpeedText.text = "Connecting...";
    drawBG();

}
/* Adds the element as a child to the stage, keeps track of the zIndex as easelJS is missing such a functionality */
function addChildToStage(child) {
    zIndex++;
    stage.addChild(child);
}

/* Just a wrapper for easelJS's update function */
function updateSpeedo() {
    stage.update();
}

/* This function makes sure the background color of the speed indicator adapts to the current speed limit */
function setSpeedoRectColor(message) {
    /*
     Note:
     Due to the parsing as integer we have a small margin for getting the speed right:
     if speed limit is 60km/h this will result in 60.4km/h being still within the speed limit.
     This behavior is intended!
     */
    var currentSpeed = parseInt(message.currentSpeed);
    if (currentSpeed > message.currentSpeedLimit) {
        speedRect.graphics.clear().beginFill(red).rect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
    } else {
        speedRect.graphics.clear().beginFill(blue).rect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
    }
}

/*
 * This function sets the current speed according to the received message.
 * This includes setting:
 * a) the height of the speed indicator rectangle
 * b) the speed text
 * and c) fading in and out the speed unit text below the current shown speed text */
function setNewSpeed(message) {
    /* Note:
     Due to the parsing as integer we have a small margin for getting the speed right:
     if speed is 60.8km/h this will result in 60km/h being shown as the current speed.
     This behavior is intended!
     */
    var valueInt = parseInt(message.currentSpeed);
    setSpeedoRectColor(message);
    currentSpeedText.text = valueInt;
    // For the height of the speed indicator rectangle we'll use the actual floating number tho - this will result in smoother transitions
    var newSpeedRectPos = modulate(message.currentSpeed, [0, MAXSPEED], [2, CANVAS_HEIGHT], true);
    speedRect.y = CANVAS_HEIGHT - newSpeedRectPos;

    if (message.currentSpeed < 10) {
        bgSpeedUnit.alpha = 0;
    } else if (message.currentSpeed == 10) {
        bgSpeedUnit.alpha = 0.1;
    } else if (message.currentSpeed == 11) {
        bgSpeedUnit.alpha = 0.2;
    }
    else if (message.currentSpeed == 12) {
        bgSpeedUnit.alpha = 0.4;
    }
    else if (message.currentSpeed == 13) {
        bgSpeedUnit.alpha = 0.6;

    }
    else if (message.currentSpeed == 14) {
        bgSpeedUnit.alpha = 0.8;
    }
    else if (message.currentSpeed >= 15) {
        bgSpeedUnit.alpha = 1;
    }
}

/* Note:
 * This function needs to be called before the websocket server sends commands!
 *
 * It makes sure the background of the speedometer is shown. This includes:
 * a) alternating rows with light or dark grey background
 * b) each rows text - the given speed at that height
 * c) adding the speed unit text to the stage */
function drawBG() {

    var rowHeight = (CANVAS_HEIGHT / (MAXSPEED + 0) * 10); // only full pixels can be drawn
    var rowHeightSmooth = Math.round(rowHeight);

    for (var i = MAXSPEED - 10, j = 0; i >= 0; i -= 10, j++) {
        var bgRow = new createjs.Shape();
        var colorBG = (j % 2 == 0 ? bgGreyLight : bgGreyDark);
        if (i == 0)
            bgRow.graphics.beginFill(colorBG).rect(0, j * rowHeightSmooth, CANVAS_WIDTH, rowHeightSmooth + rowheightOffset);
        else
            bgRow.graphics.beginFill(colorBG).rect(0, j * rowHeightSmooth, CANVAS_WIDTH, rowHeightSmooth);

        rowheightOffset += rowHeight - rowHeightSmooth; // calculate rowHeightoffset

        if (i == 0) { // dirty fix
            i = "00"
        }
        var colorTxt = (j % 2 == 0 ? bgGreyDarkFont : bgGreyLightFont);
        var bgSpeedText = new createjs.Text(i, "40px Roboto", colorTxt);
        bgSpeedText.x = CANVAS_WIDTH / 2;
        bgSpeedText.textAlign = "center";
        bgSpeedText.y = (j * rowHeight) + rowHeight / 4 - 5; // add font size to center

        stage.addChildAt(bgSpeedText, 0);
        stage.addChildAt(bgRow, 0); // 0 is the lowest layer
        zIndex += 2;
    }
    bgSpeedUnit.alpha = 0;
    bgSpeedUnit.x = CANVAS_WIDTH / 2;
    bgSpeedUnit.textAlign = "center";
    bgSpeedUnit.y = (11 * rowHeight) + rowHeight / 4 + 5;
    addChildToStage(bgSpeedUnit);
    stage.update();
}

/* This is called every time a new message was received and parsed
 * it sets the current speed */
function handleNewData(message) {
    setNewSpeed(message);
    updateSpeedo();
}