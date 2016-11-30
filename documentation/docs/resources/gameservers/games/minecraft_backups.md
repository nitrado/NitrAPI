Here you can find all information about minecraft backup specific endpoints.

## /gameservers/games/minecraft_backup

This endpoint creates a new minecraft backend of a specific world.
The world parameter requires <gamefolder>/<worldname>.

Request:
```
POST /services/<id>/gameservers/games/minecraft_backup?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

POST Parameters:
```
world=minecraft/world
```

Example Response:
```json
{  
   "status":"success",
   "message":"The backup will be created now"
}
```

## /gameservers/games/minecraft_backup/:timestamp/restore

This endpoint restores a specific backup to the main directory of the minecraft installation.

Request:
```
POST /services/<id>/gameservers/games/minecraft_backup/<timestamp>/restore?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Example Response:
```json
{  
   "status":"success",
   "message":"The backup will be created now"
}
```


## /gameservers/games/minecraft_backup/:timestamp/destroy

This endpoint deletes a specific backup. If you delete a backup, it's gone forever.

Request:
```
DELETE /services/<id>/gameservers/games/minecraft_backup/<timestamp>/destroy?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Example Response:
```json
{  
   "status":"success",
   "message":"The backup has been deleted"
}
```