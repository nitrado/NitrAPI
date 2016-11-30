
## Pricing Information


In this sample response we've only added for all 3 gameserver types just 2 slots.

Please take a look into the [dimension pricing](/resources/order/information/#pricing-structure-dimensions) system for more information how to calculate the price for this product.

**Example:**

If you want to order a Publicserver for 30 days with 6 Slots and 2048 GB of ram you need to pay 8,00€.


Request:
```
GET /order/pricing/gameserver?access_token=<access_token>
```

Parameters:
```
location_id=<location_id>
sale_service=<service_id> (optional, service id of service which needs to be switched)
```

Response:
```
{
   "status":"success",
   "data":{
      "prices":{
         "rental_times":[
            72,
            720,
            2160,
            8760
         ],
         "dimensions":[
            {
               "id":"type",
               "name":"Gameserver",
               "values":{
                  "basic":{
                     "name":"Publicserver Basic",
                     "description":[
                        "bla bla bla bla bla",
                        "blou blub lbulbu bl"
                     ]
                  },
                  "publicserver":{
                     "name":"Publicserver",
                     "description":[
                        "bla bla bla bla bla",
                        "blou blub lbulbu bl"
                     ]
                  },
                  "eps":{
                     "name":"EPS Publicserver",
                     "description":[
                        "bla bla bla bla bla",
                        "blou blub lbulbu bl"
                     ]
                  }
               }
            },
            {
               "id":"slot",
               "name":"Slots",
               "values":{
                  "basic":[
                     4,
                     6
                  ],
                  "publicserver":[
                     4,
                     6
                  ],
                  "eps":[
                     4,
                     6
                  ]
               }
            },
            {
               "id":"upgrade",
               "name":"RAM Upgrade (Minecraft)",
               "values":{
                  "basic":null,
                  "eps":null,
                  "publicserver":{
                     "4":[
                        1024,
                        2048,
                        3072,
                        6144
                     ],
                     "6":[
                        1024,
                        2048,
                        3072,
                        6144
                     ]
                  }
               }
            }
         ],
         "prices":{
            "basic":{
               "4":{
                  "72":{
                     "price":75,
                     "id":174
                  },
                  "720":{
                     "price":300,
                     "id":3
                  },
                  "2160":{
                     "price":810,
                     "id":4
                  },
                  "8760":{
                     "price":3000,
                     "id":6
                  }
               },
               "6":{
                  "72":{
                     "price":100,
                     "id":7
                  },
                  "720":{
                     "price":400,
                     "id":9
                  },
                  "2160":{
                     "price":1080,
                     "id":10
                  },
                  "8760":{
                     "price":4000,
                     "id":12
                  }
               }
            },
            "publicserver":{
               "4":{
                  "1024":{
                     "72":{
                        "price":100,
                        "id":187
                     },
                     "720":{
                        "price":400,
                        "id":188
                     },
                     "2160":{
                        "price":1100,
                        "id":189
                     },
                     "8760":{
                        "price":3900,
                        "id":190
                     }
                  },
                  "2048":{
                     "72":{
                        "price":150,
                        "id":322
                     },
                     "720":{
                        "price":600,
                        "id":350
                     },
                     "2160":{
                        "price":1600,
                        "id":378
                     },
                     "8760":{
                        "price":6000,
                        "id":406
                     }
                  },
                  "3072":{
                     "72":{
                        "price":225,
                        "id":336
                     },
                     "720":{
                        "price":900,
                        "id":364
                     },
                     "2160":{
                        "price":2400,
                        "id":392
                     },
                     "8760":{
                        "price":9000,
                        "id":420
                     }
                  },
                  "6144":{
                     "72":{
                        "price":275,
                        "id":569
                     },
                     "720":{
                        "price":1100,
                        "id":590
                     },
                     "2160":{
                        "price":3290,
                        "id":611
                     },
                     "8760":{
                        "price":11000,
                        "id":632
                     }
                  }
               },
               "6":{
                  "1024":{
                     "72":{
                        "price":150,
                        "id":191
                     },
                     "720":{
                        "price":600,
                        "id":192
                     },
                     "2160":{
                        "price":1600,
                        "id":193
                     },
                     "8760":{
                        "price":5800,
                        "id":194
                     }
                  },
                  "2048":{
                     "72":{
                        "price":200,
                        "id":323
                     },
                     "720":{
                        "price":800,
                        "id":351
                     },
                     "2160":{
                        "price":2100,
                        "id":379
                     },
                     "8760":{
                        "price":8000,
                        "id":407
                     }
                  },
                  "3072":{
                     "72":{
                        "price":275,
                        "id":337
                     },
                     "720":{
                        "price":1100,
                        "id":365
                     },
                     "2160":{
                        "price":2900,
                        "id":393
                     },
                     "8760":{
                        "price":11000,
                        "id":421
                     }
                  },
                  "6144":{
                     "72":{
                        "price":350,
                        "id":570
                     },
                     "720":{
                        "price":1400,
                        "id":591
                     },
                     "2160":{
                        "price":4190,
                        "id":612
                     },
                     "8760":{
                        "price":14000,
                        "id":633
                     }
                  }
               }
            },
            "eps":{
               "4":{
                  "72":{
                     "price":150,
                     "id":162
                  },
                  "720":{
                     "price":600,
                     "id":146
                  },
                  "2160":{
                     "price":1620,
                     "id":148
                  },
                  "8760":{
                     "price":6000,
                     "id":150
                  }
               },
               "6":{
                  "72":{
                     "price":225,
                     "id":540
                  },
                  "720":{
                     "price":900,
                     "id":520
                  },
                  "2160":{
                     "price":2430,
                     "id":500
                  },
                  "8760":{
                     "price":9000,
                     "id":480
                  }
               }
            }
         }
      }
   }
}
```

## Order gameserver

You need also to provide the start game. Please choose a valid game from [games list](/resources/gameserver/).

Request:
```
POST /order/order/gameserver?access_token=<access_token>
```

POST Parameters:
```
location_id=2 (Location id from the location list)
price=800 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
dimensions[type]=publicserver
dimensions[slot]=6
dimensions[upgrade]=2048
additionals[game]=mcrbuk (Start game folder_short)
```

Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €8.00."

}
```

## Extend gameserver

**Pricing list for service extension**

Request:
```
GET /order/pricing/gameserver?access_token=<access_token>
```

Parameters:
```
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Response:
```
{  
   "status":"success",
   "data":{  
      "extend":{  
         "rental_times":[  
            72,
            720,
            2160,
            8760
         ],
         "prices":{  
            "72":325,
            "720":1300,
            "2160":3500,
            "8760":13000
         }
      }
   }
}
```

**Process service extension**

Request:
```
POST /order/order/gameserver?access_token=<access_token>
```

POST Parameters:
```
price=800 (Calculated price from the pricing call) 
rental_time=720 (Extension time in hours)
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €8.00."

}
```


## Switch gameserver

You need also to provide the start game. Please choose a valid game from [games list](/resources/gameserver/).
If you switch a old service you need to provide the correct price, please check the pricing list with sale_service parameter.

**Important:** If the sale price is higher then the price of the new service, the difference will be added to your account as credit.

Request:
```
POST /order/order/gameserver?access_token=<access_token>
```

POST Parameters:
```
location_id=2 (Location id from the location list)
price=-920 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
dimensions[type]=publicserver
dimensions[slot]=6
dimensions[upgrade]=2048
additionals[game]=mcrbuk (Start game folder_short)
method=switch
service_id=1 (Service id of the service who needs to switched.)
```

Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of -9.20€."

}
```