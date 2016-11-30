## Pricing Information

Please take a look into the [parts pricing](/resources/order/information/#pricing-structure-parts) system for more information how to calculate the price for this product.

**Example:**

If you want to order a Teamspeak 3 Musicbot with 25 GB for 30 days you need to pay 10,00€.

Request:
```
GET /order/pricing/musicbot?access_token=<access_token>
```

Parameters:
```
location=<location_id>
sale_service=<service_id> (optional, service id of service which needs to be switched)
```

Example Response:
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
         "parts":[  
            {  
               "type":"package",
               "min_count":1,
               "max_count":2,
               "optional":false,
               "steps":[  
                  1,
                  2
               ],
               "step_names":{  
                  "1":"5 GB",
                  "2":"25 GB"
               },
               "rental_times":[  
                  {  
                     "hours":72,
                     "prices":[  
                        {  
                           "count":1,
                           "price":100
                        },
                        {  
                           "count":2,
                           "price":150
                        }
                     ]
                  },
                  {  
                     "hours":720,
                     "prices":[  
                        {  
                           "count":1,
                           "price":500
                        },
                        {  
                           "count":2,
                           "price":1000
                        }
                     ]
                  },
                  {  
                     "hours":2160,
                     "prices":[  
                        {  
                           "count":1,
                           "price":1350
                        },
                        {  
                           "count":2,
                           "price":2700
                        }
                     ]
                  },
                  {  
                     "hours":8760,
                     "prices":[  
                        {  
                           "count":1,
                           "price":5000
                        },
                        {  
                           "count":2,
                           "price":10000
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

## Order Musicbot

Request:
```
POST /order/order/musicbot?access_token=<access_token>
```

POST Parameters:
```
location=<location_id> (Location id from the location list)
price=1000 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[package]=2
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €10.00."

}
```

## Extend Musicbot

**Pricing list for service extension**

Request:
```
GET /order/pricing/musicbot?access_token=<access_token>
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
POST /order/order/musicbot?access_token=<access_token>
```

POST Parameters:
```
price=1000 (Calculated price from the pricing call) 
rental_time=720 (Extension time in hours)
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €10.00."

}
```


## Switch Musicbot

If you switch a old service you need to provide the correct price, please check the pricing list with sale_service parameter.

**Important:** If the sale price is higher then the price of the new service, the difference will be added to your account as credit.

Request:
```
POST /order/order/musicbot?access_token=<access_token>
```

POST Parameters:
```
location=<location_id> (Location id from the location list)
price=-80 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[package]=2
method=switch
service_id=1 (Service id of the service who needs to switched.)
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of -0.80€."

}
```