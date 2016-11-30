Nitrado addons (german "Zusatzpakete") are small additional files for
the installed gameserver.

## GET /gameservers/addons

List all available addons for the current gameserver with the status
(installed, uninstalled, unknown). A localized deescription helps
to identify the addons.

Request:
```
GET /services/<id>/gameservers/addons/?access_token=<access_token>
```

Example Response:
```json
{
   "status":"success",
   "data":{
     "addons": {
       "crosshair": {
         "description": "A big red crosshair",
         "status": "installed"
       }
     }
   }
}
```

## POST /gameservers/addons/install

Install the given addon

Request:
```
POST /services/<id>/gameservers/addons/install?access_token=<access_token>
```

POST parameters:
```
addon=crosshair (The unique name of the addon)
```

Example Response:
```json
{
   "status":"success",
   "message":"Das Zusatzpaket crosshair wurde installiert."
}
```

## POST /gameservers/addons/reinstall

Reinstall the given addon

Request:
```
POST /services/<id>/gameservers/addons/reinstall?access_token=<access_token>
```

POST parameters:
```
addon=crosshair (The unique name of the addon)
```

Example Response:
```json
{
   "status":"success",
   "message":"Das Zusatzpaket crosshair wurde installiert."
}
```

## DELETE /gameservers/addons/uninstall

Remove the given addon

Request:
```
DELETE /services/<id>/gameservers/addons/uninstall?access_token=<access_token>
```

POST parameters:
```
addon=crosshair (The unique name of the addon)
```

Example Response:
```json
{
   "status":"success",
   "message":"Das Zusatzpaket crosshair wurde deinstalliert."
}
```

