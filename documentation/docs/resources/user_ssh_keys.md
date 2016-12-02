## GET /user/ssh_keys

This endpoint lists up all SSH public keys from your user. This Keys will be used for the Cloud Server Installation.

Request:
```
GET /user/ssh_keys?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "data":{  
      "keys":[  
         {  
            "id":1,
            "type":"ssh-rsa",
            "public_key":"AAAAB3NzaC1yc2EAAAADAQABAAABAQDc4Sm93wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
            "comment":"My super secret public key... oh wait",
            "enabled":true
         }
      ]
   }
}
```

## POST /user/ssh_keys

Adds a new SSH public key to your user account.

Request:
```
POST /user/ssh_keys?access_token=<access_token>
```

POST Parameters:
```
key=ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc4Sm93wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX My super secret public key... oh wait
enabled=true/false (optional, default is 1)
```

Example Response:
```json
{  
   "status":"success",
   "message":"The SSH Key has been added."
}
```

## POST /user/ssh_keys/:id

Updates a SSH public key from your user account.

Request:
```
POST /user/ssh_keys/<id>?access_token=<access_token>
```

POST Parameters:
```
key=ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc4Sm93wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX My super secret public key... oh wait (optional)
enabled=true/false (optional)
```

Example Response:
```json
{  
   "status":"success",
   "message":"The SSH Key has been updated."
}
```

## DELETE /user/ssh_keys/:id

This endpoint deletes a specific SSH public key from your user account.

Request:
```
DELETE /user/ssh_keys/<id>?access_token=<access_token>
```

Example Response:
```json
{  
   "status":"success",
   "message":"The SSH Key has been deleted."
}
```