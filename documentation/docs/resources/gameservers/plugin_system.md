This is the Nitrapi Plugin System documentation. 

The Plugin System is currently only available for Battlefield: Hardline.

## GET /gameservers/plugin_system/info

This command gives you informations about the installed plugin system

Request:
```
GET /services/<id>/gameservers/plugin_system/info?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "data":{
      "plugin_system":{
         "username":"ni1_1",
         "status":"started",
         "hostname":"ps001.nitrado.net",
         "ip":"127.0.0.1",
         "port":5000,
         "installed_at":"2015-01-01T12:00:00.000+02:00",
         "password":"4x8x15x16x23x42",
         "database":{
            "username":"ni1_1_gps",
            "password":"4x8x15x16x23x42",
            "database":"ni1_1_gps",
            "hostname":"ps001.nitrado.net"
         }
      }
   }
}
```

## POST /gameservers/plugin_system/install

This command installs you a new plugin system instance.
If there is already a instance installed you will get an error.

Request:
```
POST /services/<id>/gameservers/plugin_system/install?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Plugin system is now installing"
}
```

## DELETE /gameservers/plugin_system/uninstall

This command uninstalls your plugin system instance.
If there is no plugin instance you will get an error.

Request:
```
DELETE /services/<id>/gameservers/plugin_system/uninstall?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Gameserver Plugin System will be deleted now."
}
```

## POST /gameservers/plugin_system/restart

This command restarts your plugin system instance. 

Request:
```
POST /services/<id>/gameservers/plugin_system/restart?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Gameserver Plugin System will be restarted now."
}
```

## POST /gameservers/plugin_system/stop

This command stops your plugin system instance. 

Request:
```
POST /services/<id>/gameservers/plugin_system/stop?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Gameserver Plugin System will be stopped now."
}
```