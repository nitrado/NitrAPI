This is the game server app server documentation.

The app server provides you access to the stdin of most linux games. 
It also forwards the stdout to the web socket.

## GET /gameservers/app_server

This command actives the stdout forward to the web socket for 3 minutes.
It also forwards the last 150 output lines to the web socket.

Request:
```
GET /services/<id>/gameservers/app_server?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{  
   "status": "success",
   "message": "Application server pinged"
}
```

## POST /gameservers/app_server/command

This sends a specific command directly to the stdin of the game server.
The output will be send to the web socket if its activated.

Request:
```
POST /services/<id>/gameservers/app_server/command?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

POST Parameter:
```
command=help
```

Response:
```json
{  
   "status": "success",
   "message": "Command successful send to the application server"
}
```