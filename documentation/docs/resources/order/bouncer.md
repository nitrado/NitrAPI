## Pricing Information

Please take a look into the [parts pricing](/resources/order/information/#pricing-structure-parts) system for more information how to calculate the price for this product.

**Example:**

If you want to order a Bouncer for 30 days with 8 instances you need to pay 1,60€.

Request:
```
GET /order/pricing/bouncer?access_token=<access_token>
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
                           "price":80
                        },
                        {  
                           "count":8,
                           "price":160
                        }
                     ]
                  },
                  {  
                     "hours":2160,
                     "prices":[  
                        {  
                           "count":4,
                           "price":240
                        },
                        {  
                           "count":8,
                           "price":480
                        }
                     ]
                  },
                  {  
                     "hours":8760,
                     "prices":[  
                        {  
                           "count":4,
                           "price":800
                        },
                        {  
                           "count":8,
                           "price":1600
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

## Order Bouncer

Request:
```
POST /order/order/bouncer?access_token=<access_token>
```

POST Parameters:
```
location=<location_id> (Location id from the location list)
price=160 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[slot]=8
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €1.60."

}
```

## Extend Bouncer

**Pricing list for service extension**

Request:
```
GET /order/pricing/bouncer?access_token=<access_token>
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
POST /order/order/bouncer?access_token=<access_token>
```

POST Parameters:
```
price=160 (Calculated price from the pricing call) 
rental_time=720 (Extension time in hours)
method=extend
service_id=1 (Service id of the service who needs to be extended)
```

Example Response:
```
{

    "status": "success",
    "message": "Order has been done with the price of €1.60."

}
```


## Switch Bouncer

If you switch a old service you need to provide the correct price, please check the pricing list with sale_service parameter.

**Important:** If the sale price is higher then the price of the new service, the difference will be added to your account as credit.

Request:
```
POST /order/order/bouncer?access_token=<access_token>
```

POST Parameters:
```
location=<location_id> (Location id from the location list)
price=-80 (Calculated price from the pricing call) 
rental_time=720 (Rental time in hours)
parts[slot]=8
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