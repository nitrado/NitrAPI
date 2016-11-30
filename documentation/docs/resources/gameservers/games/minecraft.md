Here you can find all information about minecraft specific endpoints.

## /gameservers/games/minecraft

This command gives you informations about the installed plugin system

Request:
```
GET /services/<id>/gameservers/games/minecraft?access_token=<access_token>
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "minecraft":{  
         "task_running":false,
         "current_world":"world",
         "all_worlds":[  
            {  
               "game":"minecraftbukkit",
               "world":"world_the_end"
            },
            {  
               "game":"minecraftbukkit",
               "world":"world_nether"
            },
            {  
               "game":"minecraftbukkit",
               "world":"world"
            }
         ],
         "world_backups":[  
            {  
               "world":"world",
               "game":"minecraftbukkit",
               "timestamp":1440068630,
               "size":3419356
            },
            {  
               "world":"world_nether",
               "game":"minecraftbukkit",
               "timestamp":1440002398,
               "size":1329923
            },
            {  
               "world":"world_the_end",
               "game":"minecraftbukkit",
               "timestamp":1440081454,
               "size":185273
            }
         ],
         "binary_md5":"cdd49c262cb98db636b8fae2837869ef",
         "binary":"minecraft_server.jar",
         "overviewmap":{  
            "enabled":true,
            "url":"https://minecraft.nitrado.net/map/127.0.0.1",
            "signs":true,
            "ipsonly":[],
            "reset":false,
            "last_reset":"2015-08-21T15:06:40.000+02:00",
            "last_enable":"2015-08-20T17:37:14.000+02:00",
            "modified":null
         },
         "mcmyadmin":{  
            "enabled":false,
            "url":"http://127.0.0.1:8080/",
            "username":"ni123456_1",
            "password":"e8cedb815d058f86d248427e0f75d0e8",
            "language":"DE"
         },
         "bungeecord":{  
            "enabled":true,
            "only":true,
            "firewall":"on_self",
            "firewall_ip":"8.8.8.8"
         },
         "rtk":{  
            "enabled":true,
            "username":"ni123456_1",
            "password":"e8cedb815d058f86d248427e0f75d0e8",
         },
         "versions":[  
            {  
               "version":"1.8",
               "name":"Spigot 1.7/1.8 (beta)",
               "md5":"870c9021be261bd285c966c642b23c32",
               "installed":false
            },
            {  
               "version":"1.8",
               "name":"Spigot 1.8 R0.1 (20141203)",
               "md5":"c25009775dbd0d2d9918511dc57df0a1",
               "installed":true
            },
            {  
               "version":"1.8.3",
               "name":"Spigot 1.8.3",
               "md5":"bd1e162378c019cf3ee69ce8b6680b92",
               "installed":false
            },
            {  
               "version":"1.8.7",
               "name":"Spigot 1.8.7",
               "md5":"360eb2a1ef8fcf81889f0de3bc35d10b",
               "installed":false
            }
         ]
      }
   }
}
```

## /gameservers/games/minecraft/bungeecord

Use this endpoint to change settings on bungeecord.

Request:
```
POST /services/<id>/gameservers/games/minecraft/bungeecord?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameters:
```
enabled=1
only=0
firewall=off
```

Response:
```json
{  
   "status":"success",
   "message":"The Bungeecord settings has been saved"
}
```


## /gameservers/games/minecraft/chunkfix

Use this endpoint to run a chunkfix. The live output of the chunkfix will be send to the websocket.
The world parameter requires <gamefolder>/<worldname>.

Request:
```
POST /services/<id>/gameservers/games/minecraft/chunkfix?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FILEBROWSER_WRITE
```

POST Parameters:
```
world=minecraft/world
limit=0
```

Response:
```json
{  
   "status":"success",
   "message":"The chunkfix on world \"minecraft/world\" will be started now"
}
```


## /gameservers/games/minecraft/mcmyadmin

Use this endpoint to change settings on McMyAdmin.

Request:
```
POST /services/<id>/gameservers/games/minecraft/mcmyadmin?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameters:
```
enabled=1
username=ni123456_1
password=blahblahblah

```

Response:
```json
{  
   "status":"success",
   "message":"The McMyAdmin settings has been saved"
}
```

## /gameservers/games/minecraft/rtk

Use this endpoint to change settings on Remote Toolkit. This endpoint is only available at Minecraft Bukkit.
We recommend to use the App Server instead of RTK.

Request:
```
POST /services/<id>/gameservers/games/minecraft/rtk?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameters:
```
enabled=1
username=ni123456_1
password=blahblahblah

```

Response:
```json
{  
   "status":"success",
   "message":"The RTK settings has been saved"
}
```

## /gameservers/games/minecraft/overviewmap

Use this endpoint to change settings on the overview map.

Note: You can change the enabled status only once within 24 hours. You can reset the map only every 3 days.

Request:
```
POST /services/<id>/gameservers/games/minecraft/overviewmap?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameters:
```
enabled=1
signs=1
reset=1 #only if you want to reset it ;-)
```

Response:
```json
{  
   "status":"success",
   "message":"The overviewmap settings has been saved"
}
```

## /gameservers/games/minecraft/change_version

Use this endpoint to switch the running minecraft version.

This is only available if you run Minecraft Vanilla or Minecraft Bukkit/Spigot.

Request:
```
POST /services/<id>/gameservers/games/minecraft/change_version?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

POST Parameters:
```
md5=bd1e162378c019cf3ee69ce8b6680b92
```

Response:
```json
{  
   "status":"success",
   "message":"The version \"bd1e162378c019cf3ee69ce8b6680b92\" has been installed."
}
```

## /gameservers/games/minecraft/overviewmap_render

This endpoint starts the rendering process of the overview map. The game server will be stopped during the rendering.

Request:
```
POST /services/<id>/gameservers/games/minecraft/overviewmap_render?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{  
   "status":"success",
   "message":"The overview map rendering has been started"
}
```

## /gameservers/games/minecraft/overviewmap_log

Returns the overview map rendering log if available.

Request:
```
GET /services/<id>/gameservers/games/minecraft/overviewmap_log?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{  
   "status":"success",
   "log":"This is the log file"
}
```

## /gameservers/games/minecraft/uuid

Returns minecraft user information inclusive UUID by username.

Request:
```
GET /services/<id>/gameservers/games/minecraft/uuid?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

GET Parameters:
```
username=tyrola
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "user":{  
         "username":"tyrola",
         "uuid":"abcde123-1234-1234-1234-abcdef123456",
         "created_at":"2015-08-01T14:00:00.000+02:00"
      }
   }
}
```

## /gameservers/games/minecraft/avatar

Returns minecraft avatar information by username.
Please note: The username is case sensitive.

Request:
```
GET /services/<id>/gameservers/games/minecraft/avatar?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

GET Parameters:
```
username=Tyrola
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "user":{  
         "username":"Tyrola",
         "avatar":"iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAB40lEQVRo3u2X\nwU6DMBjH2cmbMfGkByMmevTqUeOdN/FVlig6D2TGN+DiZtTFx/Awk0m8mMWX\nqPu6fVg62o9CUSAl+YW2NKP/Xwt0nkcc58e7TMfHZKjFa/tBCUhe7rU4AU6A\nE+AEOAFOQIsD1o0T0AYBn693LHmK+Bl3eFDvrAAIhwHh/D3/YgcXO2k7lKEN\nhMj9OyUAZxoFYB0FiH06LUBH5wTI4aR/dhy5Hfu/jy/bJ4Ca3SJQq0RH4/YF\nW0dnTMTr9bLQBwuCgF31+xmgDa7Jv792vwK/L5JMogyNEAC8PUcZsL2VAvz9\nPY6JgOljyIHwcG61gDIrAAUgjRUgD2Bj2ycHmXJ4yuQBIbPRMIOqH/XOsICZ\nAFN0Ny8SHgWIErD+ZwI2/ZM0EJbFtrICTMDQlsMXXwGqwJQIiwOtC/NHAELL\nwVUiqAGw+Bdtv8WRV6Y2UrNxuDgP+HlZNtxoqcJRKwIlFZkFKjyGxuBlBKCE\nUgJU7wGVELFsa6mK4U0EYPjKAso8/3UIkMvTh9vCApZUEICbHVX9P16CKEAt\noqIAuInv+xy+7V2VdW2Z6zZmP85HfARkAVifj8KKAlazjGHz0F2z9gjE+V+M\n2gUMbq6ZDlnA2nWLyz3vc0m9BEEAUkbADzNQkGqY9LrzAAAAAElFTkSuQmCC\n",
         "created_at":"2015-09-07T16:49:18.000+02:00"
      }
   }
}
```

## /gameservers/games/minecraft/plugins

Returns minecraft bukkit/spigot plugin information for installed plugins.

Request:
```
GET /services/<id>/gameservers/games/minecraft/plugins?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "plugins":[  
         {  
            "file":"ChestShop.jar",
            "details":{  
               "name":"ChestShop",
               "main":"com.Acrobot.ChestShop.ChestShop",
               "version":"3.8.12",
               .......
               }
            }
         },
         {  
            "file":"Multiverse-Portals.jar",
            "details":{  
               "name":"Multiverse-Portals",
               "main":"com.onarandombox.MultiversePortals.MultiversePortals",
               "authors":[  
                  "Rigby",
                  "fernferret"
               ],
               "version":"2.0-b254",
               .......
               }
            }
         },
         {  
            "file":"Modifyworld.jar",
            "details":{  
               "name":"Modifyworld",
               "main":"ru.tehkode.modifyworld.bukkit.Modifyworld",
               "soft-depend":[  
                  "PermissionsEx",
                  "Vault"
               ],
               "version":"1.19.7",
				.......
            }
         }
      ]
   }
}
```