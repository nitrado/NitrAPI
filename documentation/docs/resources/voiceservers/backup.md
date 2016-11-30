This are backup commands are for voiceservers.

The available snapshots will be listed at the /voiceservers endpoint.

**Note:** Currently only supported by Teamspeak 3.

## POST /voiceservers/backup

This command creates a new Voiceserver snapshot.
The snapshot can is available for downloaded or it can be restored.

Request:
```
POST /services/<id>/voiceservers/backup?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "snapshot":{  
         "id":1
      }
   }
}
```

## POST /voiceservers/backup/upload

This endpoint uploads a new Voiceserver Backup and returns the snapshot id.

Request:
```
POST /services/<id>/voiceservers/backup/upload?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Request Body:
```
<the compressed and encrypted teamspeak 3 file>
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "snapshot":{  
         "id":2
      }
   }
}
```

## GET /voiceservers/backup/:id

Returns the Snapshot in a base64 encoded format.

Request:
```
GET /services/<id>/voiceservers/backup/<id>?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_READ
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "snapshot":"eJzsvVl7qkzXNXpef4WD0=="
   }
}
```

## DELETE /voiceservers/backup/:id

Deletes the specific snapshot from the backup system.

Request:
```
DELETE /services/<id>/voiceservers/backup/<id>?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Response:
```json
{  
   "status":"success",
   "message":"The Voiceserver Backup has been deleted."
}
```

## POST /voiceservers/backup/:id/restore

Deployes the specific snapshot to the Voiceserver and restarts it.

Request:
```
POST /services/<id>/voiceservers/backup/<id>/restore?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_BACKUPS_WRITE
```

Response:
```json
{  
   "status":"success",
   "message":"The Voiceserver Backup has been restored."
}
```

