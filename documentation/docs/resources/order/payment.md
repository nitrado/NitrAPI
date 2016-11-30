To charge a user account, you can use different payment methods.
All amounts need to be provided in cents. The selected currency depends on the user.

## /order/payment/payment_methods

Lists all available payment methods for the current user.

Request:
```
GET /order/payment/payment_methods?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "payment_methods":{  
         "gc_paypal":{  
            "name":"PayPal",
            "min_amount":49,
            "max_amount":150000,
            "allowed_amounts":null,
            "countries":[  
               "DE",
               "AR",
            ]
         },
         "gc_ideal":{  
            "name":"iDEAL",
            "min_amount":49,
            "max_amount":150000,
            "allowed_amounts":null,
            "countries":[  
               "NL"
            ],
            "banks":{  
               "ABNANL2A":"ABN AMRO",
               "INGBNL2A":"Issuer Simulation V3 - ING",
               "RABONL2U":"Issuer Simulation V3 - RABO"
            }
         }
      }
   }
}
```

## /order/payment/countries

Lists all supported countries for payment requests.

Request:
```
GET /order/payment/countries?access_token=<access_token>
```

Example Response:
```
{  
   "status":"success",
   "data":{  
      "countries":[  
         {  
            "name":"LANG_GERMANY",
            "short":"DE"
         },
         {  
            "name":"LANG_AUSTRIA",
            "short":"AT"
         }
      ]
   }
}
```


## /order/payment/charge

Creates a charge call. If it's successful you receive a link where you can redirect the user.
The user will be redirected to the Nitrado website, the website redirects to the payment provider to finalize the payment.

Request:
```
POST /order/payment/charge?access_token=<access_token>
```

POST Parameters:
```
method=gc_paypal (payment method)
amount=100 (Amount in cent, sample is 1€)
country=DE (2 digit ISO country code for transaction)
bank=ABANAL2A [optional] (only if you use gc_ideal as payment method]
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "payment":{  
         "url":"https://server.nitrado.net/deu/payments/smartphonePay?token=5762bf0e-3ac8-4629-8aa7-46600a0a0005"
      }
   }
}
```