This are global commands are for Cloud Servers.

## GET /cloud_servers

This command returns all Cloud Server information which are available

Request:
```
GET /services/<id>/cloud_servers?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "cloud_server":{  
         "status":"running",
         "hostname":"cloud1337.nitrado.cloud",
         "hardware":{  
            "cpu":2,
            "ram":4,
            "windows":1,
            "ssd":20,
            "ipv4":3,
            "traffic":2
         },
         "ips":[  
            {  
               "address":"2a03:4d40:1337:0:f816:xxxx:fe36:xxxx",
               "version":6,
               "main_ip":true,
               "mac":"fa:18:3e:32:e4:12",
               "ptr":"cloud1337.nitrado.cloud"
            },
            {  
               "address":"5.83.160.256",
               "version":4,
               "main_ip":true,
               "mac":"fa:18:3e:32:e4:12",
               "ptr":"cloud1337.nitrado.cloud"
            }
         ],
         "image":{  
            "id":3,
            "name":"CentOS 7 (Plain)"
         },
         "password_available":false,
         "bandwidth_limited":false
      }
   }
}
```

List of possible status codes:

| Status Code                |  Description   |
| -------------------------- | -------------: |
| installing                 | Will be returned if the server is currently installing. |
| reinstalling               | Will be returned if the server is currently reinstalling. |
| flavour_change             | Will be returned during server up- and downgrades. |
| running                    | Will be returned if the server is up and running. |
| stopped                    | Will be returned if the server is stopped. |
| error_fc                   | Will be returned if a error while the up- and downgrade occurs. |
| error_delete               | Will be returned if a error while deleting the server occurs. |
| error_install              | Will be returned if a error while installing the server occurs. |
| error_reinstall            | Will be returned if a error while reinstalling the server occurs. |


## GET /cloud_servers/password

This endpoint returns the installation password. The password will be deleted after calling this endpoint. 
Please change or save the password. There is no way to recover the lost password.

Request:
```
GET /services/<id>/cloud_servers/password?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "password":"MySpecialRootPassword123"
   }
}
```


## GET /cloud_servers/console

Returns the noVNC console URL for Remote Management.

Request:
```
GET /services/<id>/cloud_servers/console?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "console":{  
         "url":"https://console.nitrado.net:6080/vnc_auto.html?token=5d2b47f2-35b7-XXXX-a38e-XXXXXXXXXX",
         "type":"novnc"
      }
   }
}
```

## POST /cloud_servers/ptr

Changes a PTR record of a specific IPv4 or IPv6 address.

Request:
```
POST /services/<id>/cloud_servers/ptr?access_token=<access_token>
```

POST Parameters:
```
ptr=nitrado.net (a valid hostname)
ip=5.83.160.256 (one of your IPv4 or IPv6 addresses)
```

Example Response:
```json
{  
   "status":"success",
   "message":"The PTR record from 5.83.160.256 has been changed to \"nitrado.net\""
}
```

## POST /cloud_servers/hostname

Changes the hostname of the Cloud Server.

Request:
```
POST /services/<id>/cloud_servers/hostname?access_token=<access_token>
```

POST Parameters:
```
hostname=server01.nitrado.net (optional, if empty the default hostname will be set again)
```

Example Response:
```json
{  
   "status":"success",
   "message":"The hostname has been changed to server01.nitrado.net"
}
```


## POST /cloud_servers/reinstall

Reinstalls the Cloud Server instance. Optional you can provide a new Image ID. Click [here](/resources/cloud_server/#get-informationcloud_serversimages) for a full images list.

Request:
```
POST /services/<id>/cloud_servers/reinstall?access_token=<access_token>
```

POST Parameters:
```
image_id=3 (optional, select a specific image ID)
```

Example Response:
```json
{  
   "status":"success",
   "message":"Reinstallation has been started"
}
```
