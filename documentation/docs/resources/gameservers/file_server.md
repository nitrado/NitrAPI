This is the game server file server documentation.

For file up- and downloads you will receive a token and token endpoint from the api.
You can download the files directory from the storage. Uploads can be done also directly to the storage.

## GET /gameservers/file_server/list

This command returns the complete content of a given directory.
Optionally you can search recursively for a specific file name pattern.

Request:
```
GET /services/<id>/gameservers/file_server/list?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
```

GET Parameter:
```
dir=/games/ni1_1/ftproot/ (optional)
search=*.cfg (optional)
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "entries":[
         {
            "type":"file",
            "path":"/games/ni1_1/ftproot/restart.log",
            "name":"restart.log",
            "size":7242,
            "owner":"ni1_1",
            "group":"ni1_1",
            "chmod":"100660",
            "created_at":1430319118,
            "modified_at":1430319118,
            "accessed_at":1430298175
         },
         {
            "type":"dir",
            "path":"/games/ni1_1/ftproot/minecraft",
            "name":"minecraft",
            "owner":"ni1_1",
            "group":"ni1_1",
            "chmod":"40775",
            "created_at":1430306359,
            "modified_at":1430306359
         }
      ]
   }
}
```

## GET /gameservers/file_server/download

The command returns a file download url to get the file directly from the storage server

Request:
```
GET /services/<id>/gameservers/file_server/download?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
```

GET Parameter:
```
file=/games/ni1_1/ftproot/restart.log
```

Example Response:
```json
{
  "status": "success",
  "data": {
    "token": {
      "url": "http://dev001.nitrado.net:8080/download/?token=7fd95b1f-702b-4b8a-b481-91b41c1f98e5",
      "token": "7fd95b1f-702b-4b8a-b481-91b41c1f98e5"
    }
  }
}
```

**Doing the file download**

Just make a GET request to the given url inclusive the token. You will receive the file download stream.

## POST /gameservers/file_server/upload

The command returns a url to upload the file directly to the storage server

Request:
```
POST /services/<id>/gameservers/file_server/upload?access_token=<access_token>
```

POST Parameter:
```
path=/games/ni1_1/ftproot/
file=newFile.txt
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "token":{
         "url":"http://dev001.nitrado.net:8080/upload/",
         "token":"8c3ff9b4-b222-4d30-87ae-9dd6a7c0d1d7"
      }
   }
}
```

**Doing the file upload**

Make a POST request to the given url storage url. Send the file content as body.
File streams are supported.

Header:
```
Token: <token>
Content-Type: application/binary
```

## DELETE /gameservers/file_server/delete

This commands deletes a file or directory (recursively) 

Request:
```
DELETE /services/<id>/gameservers/file_server/delete?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

DELETE Parameter:
```
path=/games/ni1_1/ftproot/restart.log
```

Example Response:
```json
{
   "status":"success",
   "message":"File or directory has been deleted"
}
```

## POST /gameservers/file_server/copy

This commands copies a file or directory (recursively) 

Request:
```
POST /services/<id>/gameservers/file_server/copy?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

POST Parameter:
```
source_path=/games/ni1_1/ftproot/restart.log
target_path=/games/ni1_1/ftproot/
target_name=restart-copy.log

```

Example Response:
```json
{
   "status":"success",
   "message":"File or directory has been copied"
}
```

## POST /gameservers/file_server/move

This commands renames/moves a file or directory (recursively) 

Request:
```
POST /services/<id>/gameservers/file_server/move?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

POST Parameter for moving a directory:
```
source_path=/games/ni1_1/ftproot/minecraft/
target_path=/games/ni1_1/ftproot/minecraft_move/
```

POST Parameter for moving a file:
```
source_path=/games/ni1_1/ftproot/restart.log
target_path=/games/ni1_1/ftproot/minecraft/
target_filename=old-restart.log (optional, can be only used for files)
```

Example Response:
```json
{
   "status":"success",
   "message":"The directory has been moved"
}
```

## POST /gameservers/file_server/mkdir

This command creates a directory

Request:
```
POST /services/<id>/gameservers/file_server/mkdir?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

POST Parameter:
```
path=/games/ni1_1/ftproot/
name=newDirectory
```

Example Response:
```json
{
   "status":"success",
   "message":"The directory has created"
}
```

## GET /gameservers/file_server/size

Calculates the full size of a given file or directory.

Request:
```
GET /services/<id>/gameservers/file_server/size?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_READ
```

GET Parameter:
```
path=/games/ni1_1/ftproot/
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "size":25787022
   }
}
```


