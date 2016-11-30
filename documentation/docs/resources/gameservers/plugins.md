This is the NitrAPI Plugin interface documentation.

You can query plugins for specific games and additional information with a specific plugin id.
This information is refreshing many times a day.

*You can actually only query Minecraft plugins, but more games will follow.*

## GET /gameserver/plugins

This is the main interface, for all plugins.
Maximum result limit for each query is 1000.

Request:
```
GET /services/<id>/gameserver/plugins?access_token=<access_token>
```

GET Parameter:
```
game=<gameshort> (optional)
search=<query> (optional)
start=<start-num> (optional)
imit=<limit-num> (optional)
```

To query every plugin in the API, you need more than one request!

```
{
    "status": "success",
    "data":{
        "plugins":[
               {
               "id": ​1002,
               "compatible_with": "mcrbuk",
               "source": "bukget",
               "name": "animal-selector",
               "visible": ​1
               },
               {
                   "id": ​1004,
                   "compatible_with": "mcrbuk",
                   "source": "bukget",
                   "name": "animal_spawn_limit",
                   "visible": ​1
               }
           ]
       }
   }
```
   
## GET /gameserver/plugins/:id

This is the interface, to get additional information about a plugin. 

Request:
```
GET /services/<id>/gameserver/plugins/<id>?access_token=<access_token>
```

```
{
    "status": "success",
    "data": {
        "details": {
            "id": ​1002,
            "compatible_with": "mcrbuk",
            "source": "bukget",
            "name": "animal-selector",
            "versions":[
                {
                    "version": "0.2",
                    "changelog": "<div class=\"content-box-inner\">\n<h3>\n Change log\n</h3>\n<p>\n * Can no longer select players which was causing problems on my server.\n</p>\n</div>"
                },
                {
                    "version": "0.1",
                    "changelog": "<div class=\"content-box-inner\">\n<h3>\n Change log\n</h3>\n<p>\n Initial Release.\n</p>\n</div>"
                }
            ]
        }
    }
}
```

## Sources

* [bukget.org](http://bukget.org/)
* [spigotmc.org](https://www.spigotmc.org/) (hopefully in the future)