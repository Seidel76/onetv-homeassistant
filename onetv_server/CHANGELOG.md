# Changelog

## 1.0.33
- Web page: when you schedule a recording, the search now finds TV shows from the guide as well as channels. A show picked there is recorded like in the app and follows the guide if it starts earlier or later.
- Web page: "Stay signed in on this device" now keeps you signed in for 30 days, even after closing the page or the home-screen app.
- Web page: fixed a stray "null" and date fields that went past the edge of the screen on phones.

## 1.0.32
- Seeking in a recording that is still in progress now works right away in every player, including going back to the start and jumping to the latest recorded moment.

## 1.0.31
- At the first error from your provider (for example error 520), the recording stops and is marked as failed, without trying again, and you are notified right away.

## 1.0.30
- On your web page, Settings › Remove this server from my page hides a server you no longer use. It comes back only when you add it again from OneTV Connect.

## 1.0.29
- New web page for your recordings, the same at home and away: watch, download, schedule, stop, extend or delete recordings from any browser at dvr.onetvconnect.com (link in OneTV Connect › Settings › Recording › Remote access).
- You choose its password the first time you open the link. It is never sent to OneTV: the page and your server prove it to each other, and everything is encrypted end to end.
- In Home Assistant, Open Web UI shows the same new page.

## 1.0.28
- After a restart or an update, the server no longer notifies problems older than 2 hours (they stay visible in the app).

## 1.0.27
- Provider errors seen while recording (error 520 and other 5xx, address refused, too many connections, channel off air, account rejected) are now recognized, shown on the recording and notified.

## 1.0.26
- The cause of a problem (and its notification) now shows while the recording is still trying, not only once it ends.

## 1.0.25
- A recording refused by the provider from the very first second (for example error 520) is now reported as "didn't start" rather than "interrupted".

## 1.0.24
- When a recording doesn't start, is interrupted or fails without anyone stopping it, OneTV Connect gets a notification on iPhone, iPad and Mac with the cause (for example "your provider's server isn't responding (error 520)"). Turn it off in Settings › Recording.
- The cause of the problem also shows on the recording in the app.

## 1.0.23
- In Home Assistant nothing changes (the page stays in Open Web UI). On Docker, Unraid and NAS, the same page now opens from the container's WebUI (http://<address>:47821/, home network only).

## 1.0.22
- Away from home, OneTV Server is reached only through the OneTV relay (or a direct connection it negotiates): the old iCloud remote channel is gone, and the iCloud token the server kept is erased at start.
- The Mac app updates itself again when no recording is planned.

## 1.0.21
- The web page (Open Web UI) now shows everything about recordings in progress: programme, channel, account, recording time, time left, size, bitrate, stream state and incidents, updated live. Stop a recording, extend it by 30 minutes, cancel a scheduled one or delete an old one from the page.
- On other computers of your network, the page asks for an access code shown in OneTV Connect (Settings › Recording › Advanced).

## 1.0.20
- Remote access through the relay keeps connections open between requests: lists, commands and playback answer faster away from home.

## 1.0.19
- Remote access through the OneTV relay (dvr.onetvconnect.com): away from home, the apps use the same connection as at home (list, instant commands, playback, live, downloads) on every network, mobile, VPN or hotel Wi-Fi included. The relay only carries end-to-end encrypted data and stores nothing. Each device turns it on in its own settings; the server can refuse it in its settings.
- Direct connections are negotiated through the relay in under a second; video stays direct whenever possible.

## 1.0.18
- Away access is far more reliable: the server now answers every direct-connection request from your phone, even on mobile networks (single-use iCloud tokens handled correctly, requests wait for their token instead of failing).

## 1.0.17
- Watch and download your recordings away from home, with nothing to open on your router: the apps connect directly to this server through an encrypted connection.
- Away from home, stop or delete a recording separately: stopping keeps what was recorded.
- Interrupted downloads resume where they stopped.

## 1.0.16
- Automatic updates: OneTV Server checks for new versions every day and installs them by itself where possible (Windows, Linux, Mac), never during a recording. In Home Assistant, turn on auto-update for this app.
- Remote stop is reliable: stopping a recording started away from home always reaches the server.

## 1.0.15
- Remote control rebuilt: schedule, stop or extend recordings from anywhere through your iCloud (end-to-end encrypted, nothing stored on OneTV servers).

## 1.0.14
- Recordings can be extended (+30 min) straight from the player.
- Better handling of devices watching while a recording starts.

## 1.0.13
- Maintenance release (Mac and Windows installers).

## 1.0.12
- Clearer platform name and up-to-date Home Assistant menu names on the web page.

## 1.0.11
- Redesigned web page, with a back button; « Pair a device » now stays inside Home Assistant.
- OneTV Server speaks your language: 30 languages for the page, the installers and the apps.
- Start with the computer: an option on Windows, Linux, Debian and Mac (Home Assistant: Start on boot).

## 1.0.10
- New OneTV Server logo.

## 1.0.7
- Each device keeps its own provider accounts on the server: an Apple TV with other playlists no longer removes the iPhone's.

## 1.0.5
- Scheduling works from every device, even for a channel only another device has shown to the server.
- Recordings open instantly while they are being recorded, with their full length on the timeline.

## 1.0.4
- Recording folder names follow your Home Assistant time zone.
- A stopped recording is never modified afterwards by guide updates.

## 1.0.3
- Stopping a recording early keeps the file and records its real length.

## 1.0.2
- Recordings in progress can be watched from the beginning while they are still being recorded.

## 1.0.1
- Bonjour/mDNS now announces only addresses reachable from your network (Home Assistant internal 172.30.x.x addresses were announced too).
- Choose and change the recordings folder from OneTV Connect (built-in remote folder browser).

## 1.0.0
- First version of the OneTV Server add-on.
