## Pricing Information

Please take a look into the [parts pricing](/resources/order/information/#pricing-structure-parts) system for more information how to calculate the price for this product.

**Example:**

If you want to order a Teamspeak 3 Server for 30 days with 8 you need to pay 2,40€.

Request:
```
GET /order/pricing/teamspeak3?access_token=<access_token>
```

Parameters:
```
location_id=<location_id>
sale_service=<service_id> (optional, service id of service which needs to be switched)
```

Example Response:
```
{  
   "status":"success",
   "data":{  
      "prices":{  
         "rental_times":[  
            720,
            2160,
            8760
         ],
         "parts":[  
            {  
               "type":"slot",
               "min_count":4,
               "max_count":256,
               "optional":false,
               "steps":[  
                  4,
                  8
               ],
               "step_names":null,
               "rental_times":[  
                  {  
                     "hours":720,
                     "prices":[  
                        {  
                           "count":4,
                           "price":120
                        },
                        {  
                           "count":8,
                           "price":240
                        }
                     ]
                  },
                  {  
                     "hours":2160,
                     "prices":[  
                        {  
                           "count":4,
                           "price":360
                        },
                        {  
                           "count":8,
                           "price":720
                        }
                     ]
                  },
                  {  
                     "hours":8760,
                     "prices":[  
                        {  
                           "count":4,
                           "price":1440
                        },
                        {  
                           "count":8,
                           "price":2880
                        }
                     ]
                  }
               ]
            }
         ]
      }
   }
}
```

## Order Teamspeak 3

Request:
```
POST /order/order/teamspeak3?access_token=<access_token>
```

POST Parameters:
```
location_id=2 (Location id from the location list)
price=240 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[slot]=8
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €2.40."

}
```

## Extend Teamspeak 3

**Pricing list for service extension**

Request:
```
GET /order/pricing/teamspeak3?access_token=<access_token>
```

Parameters:
```
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Example Response:
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
POST /order/order/teamspeak3?access_token=<access_token>
```

POST Parameters:
```
price=240 (Calculated price from the pricing call) 
rental_time=720 (Extension time in hours)
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €2.40."

}
```


## Switch Teamspeak 3

If you switch a old service you need to provide the correct price, please check the pricing list with sale_service parameter.

**Important:** If the sale price is higher then the price of the new service, the difference will be added to your account as credit.

Request:
```
POST /order/order/teamspeak3?access_token=<access_token>
```

POST Parameters:
```
location_id=2 (Location id from the location list)
price=-420 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[slot]=8
method=switch
service_id=1 (Service id of the service who needs to switched.)
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of -4.20€."

}
```