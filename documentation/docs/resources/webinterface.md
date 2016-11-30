The Nitrado Webinterface is now accessible via Nitrapi.

## Login

To login into the Webinterface you need a special access token. You can request this token like described in the [user resource](/resources/user/) section.
Each token has a lifetime of 24 hours.

After you have received your access you can pass it to the Nitrado Webinterface. Just redirect the user to the following url:

```
https://webinterface.nitrado.net/?access_token=XXXXXXXXXXX&language=deu&service_id=XXXXXXXX
```

You need to replace the 3 parameters access_token, language and service_id.