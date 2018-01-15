**Before you start upgrading, please confirm that if your board version is the
previous version of RC-342, you must use the TFTP tool to upgrade firmware, and
to use Alexa, you need set dsn, more details please refer to the next <a href="#note">NOTE</a>;
Otherwise you will be able to use webui cheerfully!**

# release ASR-rc568

1. fix flash briefing overlap issue when usr ask 'previous/next' command
2. fix play audible progress bar issue when usr ask 'skip/rewind' command
3. fix audio decoder some issue
4. fix again expect speech capture issue when a ExpectSpeech directive be
   reached
5. add query Alexa login status interface when APPS want to get the status
6. add notificate come in to play a prompt sound

# History Version

## release Eng-rc516

1. update the version of libcurl
2. fix stop capture bug

## release - Eng-rc503

Fix exit bug when logout

## release - Eng-rc502

1. Fix play music be blocked issue

2. Fix flash briefing accure mix voice

## release - Beta-rc499
1. Update microsemi keywords false trigger problem

2. Add the mute/unmute function by voice when playing music

3. Add notification tips function

## release - Beta-rc495

1. **Optimized Logic**
	
	* Optimized Alexa logic

	* Optimized dialog/alert/play stream logic
	
	* Optimized audio processing logic

2. **Add Functions**

	* Add "to do list" support

	* Add "sport update" support

	* Add "continous Spk TTS" support

	* Add "play cid tts" support

	* Add api: request "token" throung web

	* Support different languages:en-US, en-GB, de-DE

3. **Fix Bugs**
	
	* Some functions can't be reset when recoverboard

	* Can't support special characters when connect board to router 

	* Can't stop after interrupt audible


## release - Eng-rc342

### fix bugs:
1. Now supports WEB UI based seemless firmware upgrade</br>
2. Support WEB UI pair Wi-Fi network and network mode switch</br>
3. Fix for SSIDbug  where it was not supporting special character</br>
4. Fix Alexa SDK DSN bug where now we dont need to set it after every update</br>
5. Fix media format bug. Previous versions could not support some format of iHeartRadio station</br>
6. Perform the response of ASR event</br>

# NOTE:
<div id="note"></div>
Suppose you are lower than rc-342 version of the user, you must know the following steps:</br>
 However, since this is Beta sample, We have changed the format of the DSN, so once you complete the firmware upgrade, you have to Set the DSN manually, please refer to the procedure below (after performing the upgrade) to understand how to write the DSN to protected area in the Nor-flash:</br>

1: You need switch to Serial Console after complete the firmware upgrade, the method to entry, pls click the link:https://github.com/RAKWireless/wiscore/wiki/Access-serial-console </br>
2: When you success to entry the Console, pls press"enter", then insert the DSN command as:</br>
<<$</br>
<<$set -dsn Wiscore.Alexa.000000    //You can randomly generate 6 characters instead of `000000`</br>
<<$ok</br>
<<$q</br>

Don't worry, the future release(higher version) will not need you to re write the DSN again and upgrades will be seemless and will get you up and running in no time. </br>
