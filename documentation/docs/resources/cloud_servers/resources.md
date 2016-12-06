## GET /cloud_servers/resources

Returns the resource usage of a Cloud Server. You can choose between different time parameters.

Request:
```
GET /services/<id>/cloud_servers/resources?access_token=<access_token>
```

GET Parameters:
```
time=<time parameter>
```

Time Parameters:

| Parameter   | Data Interval |
| ----------- | ------------: |
| 1h          | 1 minute      |
| 4h          | 5 minutes     |
| 1d          | 30 minutes    |
| 7d          | 120 minutes   |

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "resources":[  
         {  
            "type":"disk_read_sda",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":0,
               "2016-12-06T08:20:10+00:00":0,
               "2016-12-06T08:25:10+00:00":0
            }
         },
         {  
            "type":"disk_write_sda",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":0,
               "2016-12-06T08:20:10+00:00":3.19,
               "2016-12-06T08:25:10+00:00":3.2
            }
         },
         {  
            "type":"network_rx_fa:16:3e:cd:xx:xx",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":0,
               "2016-12-06T08:20:10+00:00":0,
               "2016-12-06T08:25:10+00:00":0
            }
         },
         {  
            "type":"network_tx_fa:16:3e:cd:xx:xx",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":0,
               "2016-12-06T08:20:10+00:00":0,
               "2016-12-06T08:25:10+00:00":0
            }
         },
         {  
            "type":"memory",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":794.99,
               "2016-12-06T08:20:10+00:00":794.99,
               "2016-12-06T08:25:10+00:00":794.99
            }
         },
         {  
            "type":"cpu",
            "datapoints":{  
               "2016-12-06T08:15:10+00:00":0,
               "2016-12-06T08:20:10+00:00":1,
               "2016-12-06T08:25:10+00:00":1
            }
         }
      ]
   }
}
```
