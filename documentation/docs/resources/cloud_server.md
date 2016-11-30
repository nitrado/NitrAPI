
## GET /information/cloud_servers/images

Return a full list of all available Installation images.

Request:
```
GET /information/cloud_servers/images?access_token=<access_token>
```

Example Response:
```
{  
   "status":"success",
   "data":{  
      "images":[  
         {  
            "id":1,
            "name":"Ubuntu 16.04 LTS (Plain)",
            "is_windows":false
         },
         {  
            "id":2,
            "name":"Windows Server 2012 R2 Standard (Plain)",
            "is_windows":true
         },
         {  
            "id":3,
            "name":"CentOS 7 (Plain)",
            "is_windows":false
         },
         {  
            "id":4,
            "name":"Windows Server 2016 Standard (Plain)",
            "is_windows":true
         }
      ]
   }
}
```