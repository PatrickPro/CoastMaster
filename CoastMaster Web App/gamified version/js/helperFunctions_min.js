function Node(e){this.data=e,this.previous=null,this.next=null}function receivedDataPacket(){this.currentSpeed=0,this.currentSpeedLimit=0,this.nextSpeedLimit=0,this.currentDistance=0,this.gasPedal=0,this.brakePedal=0,this.time=0,this.realtime=!0,this.color=null,this.speedWhenChallengeOn=0,this.speedWhenChallengeOff=0}function dumpReceivedData(e){for(i=1;i<e._length;i++){var t=e.getDataAt(i);console.log("time: "+t.time+" - speed: "+t.currentSpeed+" - distance: "+t.currentDistance+" - gasPedal: "+t.gasPedal+" - brakePedal: "+t.brakePedal)}}function replayAllMessages(e,t){for(var i=1;i<=e._length;i++)replayMessages(e,t,i),removeTrace()}function replayMessages(e,t,i){function n(e){if(!e.paused){var t=r.getDataAt(s);handleNewData(t),s++,s==a+1&&l.removeAllEventListeners("tick")}}removeTrace();var r=e.getDataAt(i),a=r._length,s=1,l=createjs.Ticker;l.setInterval(t),l.addEventListener("tick",n)}function dumpReceivedData(){for(i=1;i<receivedMessagesList._length;i++){var e=receivedMessagesList.getDataAt(i);console.log("time: "+e.time+" - speed: "+e.currentSpeed+" - distance: "+e.currentDistance+" - gasPedal: "+e.gasPedal+" - brakePedal: "+e.brakePedal)}}function promptForIP(){var e=prompt("Server IP Address",wsUrl);null!=e&&ValidateIPaddress(e)&&(console.log("Manually set WS server IP to "+e),wsUrl=e)}function DoublyList(){this._length=0,this.head=null,this.tail=null}function ValidateIPaddress(e){return/^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/.test(e)?!0:(alert("You have entered an invalid IP address!"),!1)}function modulate(e,t,i,n){var r,a,s,l,o;if(null==n&&(n=!1),a=t[0],r=t[1],o=i[0],l=i[1],s=o+(e-a)/(r-a)*(l-o),n===!0)if(l>o){if(o>s)return o;if(s>l)return l}else{if(s>o)return o;if(l>s)return l}return s}DoublyList.prototype.add=function(e){var t=new Node(e);return this._length?(this.tail.next=t,t.previous=this.tail,this.tail=t):(this.head=t,this.tail=t),this._length++,t},DoublyList.prototype.searchNodeAt=function(e){var t=this.head,i=this._length,n=1,r={failure:"Failure: non-existent node in this list."};if(0===i||1>e||e>i)throw new Error(r.failure);for(;e>n;)t=t.next,n++;return t},DoublyList.prototype.getDataAt=function(e){var t=this.head,i=this._length,n=1,r={failure:"Failure: non-existent node in this list."};if(0===i||1>e||e>i)throw new Error(r.failure);for(;e>n;)t=t.next,n++;return t.data},DoublyList.prototype.remove=function(e){var t=this.head,i=this._length,n=1,r={failure:"Failure: non-existent node in this list."},a=null,s=null,l=null;if(0===i||1>e||e>i)throw new Error(r.failure);if(1===e)this.head=t.next,this.head?this.head.previous=null:this.tail=null;else if(e===this._length)this.tail=this.tail.previous,this.tail.next=null;else{for(;e>n;)t=t.next,n++;a=t.previous,s=t,afterNodeToDelete=t.next,a.next=afterNodeToDelete,afterNodeToDelete.previous=a,l=s,s=null}return this._length--,r.success};