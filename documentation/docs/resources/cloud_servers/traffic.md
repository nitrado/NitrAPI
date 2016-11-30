## GET /cloud_servers/traffic

The endpoint returns the traffic usage of the current month and the last 30 days.
If the traffic of the current month has been exceeded, the server bandwidth will be limited to 10 Mbit/s.

Request:
```
GET /services/<id>/cloud_servers/traffic?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "traffic":{  
         "current_month":{  
            "used":618,
            "available":2097152
         },
         "last_30_days":{  
            "2016-11-30":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-29":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-28":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-26":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-25":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-24":{  
               "incoming":0,
               "outgoing":2
            },
            "2016-11-23":{  
               "incoming":108,
               "outgoing":20
            },
            "2016-11-22":{  
               "incoming":80,
               "outgoing":14
            },
            "2016-11-21":{  
               "incoming":119,
               "outgoing":7
            },
            "2016-11-20":{  
               "incoming":123,
               "outgoing":0
            },
            "2016-11-19":{  
               "incoming":122,
               "outgoing":23
            },
            "2016-11-18":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-17":{  
               "incoming":0,
               "outgoing":0
            },
            "2016-11-16":{  
               "incoming":0,
               "outgoing":0
            }
         }
      }
   }
}
```
