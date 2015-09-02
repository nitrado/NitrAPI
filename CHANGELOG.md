# NITRAPI Changelogs

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
