This endpoint can be used for managing scheduled tasks for game servers.

The scheduling time needs to be passed in cron format.

** Available action methods **

| Action method | Description              | Action data              |
|---------------|--------------------------|--------------------------|
| restart       | Restarts the game server | Optional restart message |
| stop          | Stopps the game server   | Optional stop message    |
| start         | Starts the game server   |                          |


## GET /gameservers/tasks

This command returns all available scheduled tasks for this service.

Request:
```
GET /services/<id>/gameservers/tasks?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SCHEDULED_RESTART_READ
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "tasks":[
         {
            "id":1,
            "service_id":1,
            "minute":"0",
            "hour":"*",
            "day":"*",
            "month":"*",
            "weekday":"*",
            "next_run":"2015-07-16T10:00:00.000+02:00",
            "last_run":null,
            "action_method":"restart",
            "action_data":null
         }
      ]
   }
}
```

## POST /gameservers/tasks

Creates a new scheduled task for the service. 

Request:
```
POST /services/<id>/gameservers/tasks?access_token=<access_token>
```

POST Parameter:
```
minute=10
hour=0,4,6
day=*
month=*
weekday=*
action_method=restart
action_data="Server will be restarted now..." (optional)
```

Example Response:
```json
{
   "status":"success",
   "message":"Task has been created"
}
```

## POST /gameservers/tasks/:id

Updates a existing scheduled task for the service.

Request:
```
POST /services/<id>/gameservers/tasks/<id>?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SCHEDULED_RESTART_WRITE
```

POST Parameter:
```
action_method=stop
```

Example Response:
```json
{
   "status":"success",
   "message":"Task has been updated"
}
```


## DELETE /gameservers/tasks/:id

Deletes the specific scheduled task for the service.

Request:
```
DELETE /services/<id>/gameservers/tasks/<id>?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SCHEDULED_RESTART_WRITE
```

Example Response:
```json
{
   "status":"success",
   "message":"The task has been deleted"
}
```
