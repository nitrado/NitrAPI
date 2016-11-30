The Power Events can be used to shutdown, reboot, hard reset and boot the server.

## POST /cloud_servers/boot

Boot up a stopped Cloud Server instance.

Request:
```
POST /services/<id>/cloud_servers/boot?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "message":"Cloud Server is starting now ..."
   }
}
```

## POST /cloud_servers/reboot

Softly reboots a running Cloud Server instance.

Request:
```
POST /services/<id>/cloud_servers/reboot?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "message":"Cloud Server is rebooting now ..."
   }
}
```

## POST /cloud_servers/shutdown

Shutdown a running Cloud Server instance.

Request:
```
POST /services/<id>/cloud_servers/shutdown?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "message":"Cloud Server is shutting down now ..."
   }
}
```

## POST /cloud_servers/hard_reset

Hard resets a running Cloud Server instance.

Danger! This can cause data loss or file system corruption.
Just trigger if the instance does not respond to normal reboots.

Request:
```
POST /services/<id>/cloud_servers/hard_reset?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "message":"Cloud Server is rebooting now ..."
   }
}
```