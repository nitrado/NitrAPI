<!--
*** Thanks for checking out the NitrAPI README. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** Don't forget to give the repo a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- HEADER -->
<br />
<div align="center">

  <h2 align="center">NitrAPI</h2>

  <p align="center">
    NitrAPI is a RESTful API for Nitrado
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://server.nitrado.net">Website</a>
    ·
    <a href="https://wiki.nitrado.net/en">Wiki</a>
    ·
    <a href="https://discord.com/invite/nitrado">Discord</a>
  </p>
</div>

<!-- ABOUT THE API -->

## About The API

"NitrAPI" stands for Nitrado Application Programming Interface. It is used by Nitrado to manage all of our hosted services. As an example, the web interface is simply an application that uses the NitrAPI to display data and send commands to the servers. For instance, when a user clicks on a button for restarting the server, the web interface sends the appropriate command to the NitrAPI, which then executes the actual restart.

Because Nitrado grants free access to the NitrAPI to everyone, hobbyists and professionals can create applications for their individual needs that mimic features of the web interface, or even order new servers when needed.

### Usage Examples

<br />

#### Modding

Since the NitrAPI can be used with almost any programming language, it can also be used within almost any game modification. For instance, many communities use a game server as well as accompanying voice server and maybe uninvited guests aren't wanted on either of them. In this case, the game server, as well as the voice server, have to be protected separately.

Since it's also possible to use features of voice servers like TeamSpeak and Mumble through the NitrAPI, a game modification could be employed to automatically grant access to the voice server to players who join the server (and therefore know its password or can be found on the whitelist). For Mumble this would be possible by automatically creating a new server user, and with TeamSpeak, a "Privilege Token" could be generated and displayed to the player, which they can use to move freely on the voice server. This means whoever has access to the game server also has access to the voice server, and the management of two different protection mechanisms is a thing of the past.

<br />

#### Management via 3rd Party Software

NitrAPI can be used to manage servers and services through 3rd party software. In recent years it has been more common to use the NitrAPI with the Discord API to achieve management of Nitrado servers within the Discord client. There are already many examples of this throughout the gaming community where anything from a simple killfeed to full-fledged management tools that can be used for moderation and server controls can be achieved. This is a great and initiative way to manage Nitrado servers, and it's also a great way to manage other services that Nitrado provides.

