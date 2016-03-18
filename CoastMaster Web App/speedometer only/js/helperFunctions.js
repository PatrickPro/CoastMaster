/**
 * Created by patrickpro on 18/01/2016.
 *
 */


/* My own data structre for the simulator communication */
function receivedDataPacket() {
    this.currentSpeed = 0;
    this.currentSpeedLimit = 0;
    this.nextSpeedLimit = 0;
    this.currentDistance = 0;
    this.gasPedal = 0;
    this.brakePedal = 0;
    this.time = 0;
    this.realtime = true;
    this.color = null;
    this.speedWhenChallengeOn = 0;
    this.speedWhenChallengeOff = 0;
}

function promptForIP() {
    var newIP = prompt("Server IP Address", wsUrl);
    if (newIP != null && ValidateIPaddress(newIP)) {
        console.log("Manually set WS server IP to " + newIP);
        wsUrl = newIP;
    }
}

function ValidateIPaddress(ipaddress) {
    if (/^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/.test(ipaddress)) {
        return (true)
    }
    alert("You have entered an invalid IP address!");
    return (false)
}


// from FramerJS - usTwo
function modulate(value, rangeA, rangeB, limit) {

    var fromHigh, fromLow, result, toHigh, toLow;
    if (limit == null) {
        limit = false;
    }
    fromLow = rangeA[0], fromHigh = rangeA[1];
    toLow = rangeB[0], toHigh = rangeB[1];
    result = toLow + (((value - fromLow) / (fromHigh - fromLow)) * (toHigh - toLow));
    if (limit === true) {
        if (toLow < toHigh) {
            if (result < toLow) {
                return toLow;
            }
            if (result > toHigh) {
                return toHigh;
            }
        } else {
            if (result > toLow) {
                return toLow;
            }
            if (result < toHigh) {
                return toHigh;
            }
        }
    }
    return result;
}



