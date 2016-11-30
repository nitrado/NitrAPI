This endpoints are not service independent and available for all users.

## GET /gameserver/games

List all available games at Nitrado.

Request:
```
GET /gameserver/games?access_token=<access_token>
```

Response:
```
{
    "status": "success",
    "data": {
        "games": {
            "locations": [
                {
                    "id": 1,
                    "country": "AR",
                    "city": "Buenos Aires"
                },
                {
                    "id": 2,
                    "country": "DE",
                    "city": "Frankfurt am Main"
                },
                {
                    "id": 3,
                    "country": "US",
                    "city": "Los Angeles"
                },
                {
                    "id": 4,
                    "country": "US",
                    "city": "New Jersey"
                },
                {
                    "id": 5,
                    "country": "TR",
                    "city": "Istanbul"
                }
            ],
            "games": [
                {
                    "id": 322,
                    "steam_id": null,
                    "has_steam_game": "unknown",
                    "name": "7 Days To Die (Alpha)",
                    "minecraft_mode": false,
                    "publicserver_only": false,
                    "portlist_short": "sevendtd",
                    "folder_short": "7daystodie",
                    "minimum_slots": 0,
                    "modpacks": [ ],
                    "icons": {
                        "x256": "https://static.nitrado.net/cdn/gameicons/256/7daystodie.jpg",
                        "x120": "https://static.nitrado.net/cdn/gameicons/120/7daystodie.jpg",
                        "x64": "https://static.nitrado.net/cdn/gameicons/64/7daystodie.jpg",
                        "x32": "https://static.nitrado.net/cdn/gameicons/32/7daystodie.jpg",
                        "x16": "https://static.nitrado.net/cdn/gameicons/16/7daystodie.jpg"
                    },
                    "locations": [
                        2,
                        3,
                        4,
                        5
                    ]
                },
                {
                    "id": 225,
                    "steam_id": null,
                    "has_steam_game": "unknown",
                    "name": "Ace of Spades Classic",
                    "minecraft_mode": true,
                    "publicserver_only": true,
                    "portlist_short": "aos",
                    "folder_short": "aos",
                    "minimum_slots": 0,
                    "modpacks": [ ],
                    "icons": {
                        "x256": "https://static.nitrado.net/cdn/gameicons/256/aos.jpg",
                        "x120": "https://static.nitrado.net/cdn/gameicons/120/aos.jpg",
                        "x64": "https://static.nitrado.net/cdn/gameicons/64/aos.jpg",
                        "x32": "https://static.nitrado.net/cdn/gameicons/32/aos.jpg",
                        "x16": "https://static.nitrado.net/cdn/gameicons/16/aos.jpg"
                    },
                    "locations": [
                        2,
                        3,
                        4,
                        5
                    ]
                },
                {
                    "id": 55,
                    "steam_id": null,
                    "has_steam_game": "unknown",
                    "name": "Alien Swarm",
                    "minecraft_mode": false,
                    "publicserver_only": false,
                    "portlist_short": "asw",
                    "folder_short": "alienswarm",
                    "minimum_slots": 0,
                    "modpacks": [ ],
                    "icons": {
                        "x256": "https://static.nitrado.net/cdn/gameicons/256/alienswarm.jpg",
                        "x120": "https://static.nitrado.net/cdn/gameicons/120/alienswarm.jpg",
                        "x64": "https://static.nitrado.net/cdn/gameicons/64/alienswarm.jpg",
                        "x32": "https://static.nitrado.net/cdn/gameicons/32/alienswarm.jpg",
                        "x16": "https://static.nitrado.net/cdn/gameicons/16/alienswarm.jpg"
                    },
                    "locations": [
                        2,
                        3,
                        4,
                        5
                    ]
                }
            ]
        }
    }
}
```