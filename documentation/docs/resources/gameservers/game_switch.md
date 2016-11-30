This documentation shows you main part of the unique game swichting system.

## GET /gameservers/games

This command gives you information about the installed and available games.

Request:
```
GET /services/<id>/gameservers/games?access_token=<access_token>
```

Permission:
```
- ROLE_GAMESERVER_CHANGE_GAME
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "installed_currently":1,
      "installed_maximum":5,
      "games":[
         {
            "name":"7 Days To Die (Alpha)",
            "portlist_short":"sevendtd",
            "folder_short":"7daystodie",
            "installed":true,
            "active":false,
            "minimum_slots":0,
            "enough_slots":true,
            "modpacks":[

            ]
         },
         {
            "name":"ArmA 3",
            "portlist_short":"arma3",
            "folder_short":"arma3",
            "installed":false,
            "active":false,
            "minimum_slots":0,
            "enough_slots":true,
            "modpacks":[
               {
                  "name":"Altis Life",
                  "modpack_version":"3.1.4.8-extDB",
                  "modpack_file":"AltisLife-3.1.4.8-extDB-0.zip"
               },
               {
                  "name":"(Vanilla)",
                  "modpack_version":"1",
                  "modpack_file":"Vanilla-1-0.zip"
               }
            ]
         },
         ...
      ]
   }
}
```

## POST /gameservers/games/start

Use this command to change the running game if a game is already installed.

Request:
```
POST /services/<id>/gameservers/games/restart?access_token=<access_token>
```

Permission:
```
- ROLE_GAMESERVER_CHANGE_GAME
```

POST Parameters:
```
game=7daystodie (provide the folder short of the game list)
```

Example Response:
```json
{
   "status":"success",
   "message":"Game will be started now"
}
```

## POST /gameservers/games/install

This command (re)installs you the specific game.
Optionally you can provide a modpack to the game.

Request:
```
POST /services/<id>/gameservers/games/install?access_token=<access_token>
```

Permission:
```
- ROLE_GAMESERVER_CHANGE_GAME
```

POST Parameters:
```
game=arma3 (provide the folder short of the game list)
modpack=AltisLife-3.1.4.8-extDB-0.zip (optional, the file name of the modpack)
```

Example Response:
```json
{
   "status":"success",
   "message":"The game arma3 will be installed now"
}
```

## DELETE /gameservers/games/uninstall

This command uninstalls a specific game.

Request:
```
DELETE /services/<id>/gameservers/games/uninstall?access_token=<access_token>
```

Permission:
```
- ROLE_GAMESERVER_CHANGE_GAME
```

DELETE Parameters:
```
game=7daystodie (provide the folder short of the game list)
```

Example Response:
```json
{
   "status":"success",
   "message":"Game 7daystodie will be uninstalled now"
}
```