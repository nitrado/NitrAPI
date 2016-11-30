The Nitrapi Order System provides all necessary endpoints to charge accounts, get pricing information and order, switch or extend services. 

**Important:** The Nitrapi PHP Library does support the full order system. You can check the [project](https://github.com/nitrado/Nitrapi-PHP) on Github if you need sample code.

## Pricing Structure: Dimensions

You always need to provide the location id at each request to get the correct price for the selected location.

First you need to select a rental time from the available rental times. The rental times are always provided in hours. 

Then you need to select one value from each dimension.

If you're done you can select the correct price from the "prices" array. 
You need to follow the prices structure with your selected dimensions (same order).

**Important:**

You can also provide a service id as sale_service parameter to see which the service costs if you switch your old one.
If you switch your service you need to provide this price instead of the base one.


## Pricing Structure: Parts

You always need to provide the location id at each request to get the correct price for the selected location.

Then you need to select one value for each part. Each part can have a min_cound and a max_count. 
It's also shown if a part is optional or not. 

Each part has rental_times, each rental time has prices for each possible count.
To get the complete price you need to summarize all part prices.

**Important:**

You can also provide a service id as sale_service parameter to see which the service costs if you switch your old one.
If you switch your service you need to provide this price instead of the base one.


## /order/order/locations

The location request lists all datacenter locations.
You can determine which products are available and also get the id of each location.

Request:
```
GET /order/order/locations?access_token=<access_token>
```

Example Response:
```
{  
   "status":"success",
   "data":{  
      "locations":[  
         {  
            "id":1,
            "country":"AR",
            "city":"Buenos Aires",
            "products":{  
               "bouncer":false,
               "cloud_server":false,
               "gameserver":true,
               "mumble":false,
               "musicbot":false,
               "teamspeak3":false,
               "ventrilo":false,
               "webspace":false
            }
         },
         {  
            "id":2,
            "country":"DE",
            "city":"Frankfurt am Main",
            "products":{  
               "bouncer":true,
               "cloud_server":true,
               "gameserver":true,
               "mumble":true,
               "musicbot":true,
               "teamspeak3":true,
               "ventrilo":true,
               "webspace":true
            }
         },
         {  
            "id":3,
            "country":"US",
            "city":"Los Angeles",
            "products":{  
               "bouncer":false,
               "cloud_server":false,
               "gameserver":false,
               "mumble":false,
               "musicbot":false,
               "teamspeak3":false,
               "ventrilo":false,
               "webspace":false
            }
         },
         {  
            "id":4,
            "country":"US",
            "city":"New Jersey",
            "products":{  
               "bouncer":false,
               "cloud_server":false,
               "gameserver":false,
               "mumble":false,
               "musicbot":false,
               "teamspeak3":false,
               "ventrilo":false,
               "webspace":false
            }
         },
         {  
            "id":5,
            "country":"TR",
            "city":"Istanbul",
            "products":{  
               "bouncer":false,
               "cloud_server":false,
               "gameserver":false,
               "mumble":false,
               "musicbot":false,
               "teamspeak3":false,
               "ventrilo":false,
               "webspace":false
            }
         }
      ]
   }
}
```