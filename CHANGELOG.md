# NITRAPI Changelogs

###Changes from the 2nd of December 2016

* **Documentation**
    * *Added SSH Key Endpoint.*
* **SSH Keys**
    * *Added a endpoint to control your personal SSH public keys. The keys will be used for your Cloud Server Installation.*

###Changes from the 30th of November 2016

* **Documentation**
    * *Added Cloud Server Product to Nitrapi Documentation.*
    * *Small improvements.*
    * *Token expiring notice added.*
    * *Added mkdocs files to this master branch, now everyone can help edit the Documentation.*
* **oAuth - Access Tokens**
    * *We expire all tokens now after 30 days. You can use oAuth to refresh the tokens.*

###Changes from 5th of November 2016

* **Nitrapi SDK's**
	* *We've added SDK's for Java and Swift. Also we've updated our PHP Library.* Feel free to contribute.
* **Documentation** 
	* *We are currently updating our Public Documentation and publishing asap.*
* **Closed Beta**
	* *The Nitrapi Closed Beta will end soon. We are planing to release the API for everyone in the next weeks.*

###Changes from 4th of March 2016

* **Voiceserver**
	* *Added Voiceserver Support for the Nitrapi. Please take a look into the [documentation](http://nitrado.github.io/Nitrapi/resources/voiceservers/global/).*

###Changes from 26th of August 2015

* **User Avatar**
	* *If a user has uploaded a own avatar on the Nitrado website, the avatar url will be shown in the /user endpoint.*
* **oAuth2 Login**
	* *After a successful login via oAuth 2.0 the current username will be shown for security reasons. If the user has a avatar it will be shown too*

###Changes from 19th of August 2015
* **Player query information**
	* *If you query a gameserver via the /gameserver endpoint, all players will be returned as hash. To the [documentation](http://nitrado.github.io/Nitrapi/resources/gameservers/global/#gameservers).*

###Changes from 19th of July 2015
* **Updated the PHP SDK**
	* *The SDK is now supporting the Task Scheduler feature. To the [changes](https://github.com/nitrado/Nitrapi-PHP/commit/e0775e9d10c40ca8267bf35fb764e17d81a75b4b).*

###Changes from 8th of July 2015
* **DDoS endpoint added**
	* *The new endpoint shows the latest DDoS attacks against your server within the last 14 days. If the attack is listed, it has been filtered by the Nitrado DDoS Protection. To the [documentation](http://nitrado.github.io/Nitrapi/resources/gameservers/ddos/):*
* **New task scheduler**
	* *This new endpoint allows you to control scheduled tasks for your personal game server. The "daily restarts" will be migrated to the new task scheduler soon. The new scheduler uses the cron syntax for scheduled tasks. To the [documentation](http://nitrado.github.io/Nitrapi/resources/gameservers/tasks/).*
