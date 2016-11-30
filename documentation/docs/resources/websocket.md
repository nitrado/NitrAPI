The websocket server provides you live information about a specific service.
Currently only gameservers are supported!

## How to use?

To connect to the websocket server, you need 3 information. The label short, the service id and the websocket token.
The websocket secret will be delivered from the service endpoints.

The websocket is currently read-only. The websocket (wss://) uses tls for encryption. To send commands use the NITRAPI HTTP interface.

Sample code (works in the most modern web browsers):
```javascript
websocket = new WebSocket('wss://websocket.nitrado.net:9001');
websocket.onopen = function(evt) {
    websocket.send(JSON.stringify({action: 'login', data: {service_id: 123456, label: 'ni', token: 'b05ac3d5d71a8858fca3011a8c179f1d9ec5ab41'}}));
};
websocket.onmessage = function(evt) {
    data = JSON.parse(evt.data);
    console.log(data.data);
    console.log(data.type);
};
```

### Outputs

This information will be delivered via the websocket at the moment:

* Query information (all query updates)
* stdout of the running application if its supported
* Background backend tasks states
* Results of commands that are being send to the NITRAPI

### Samples

Coming soon...
