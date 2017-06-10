# release - Eng-rc342
## fix bugs:
1.Now supports WEB UI based seemless firmware upgrade
2.Support WEB UI pair Wi-Fi network and network mode switch
3.Fix for SSIDbug  where it was not supporting special character
4.Fix Alexa SDK DSN bug where now we dont need to set it after every update.
5.Fix media format bug. Previous versions could not support some format of iHeartRadio station
6.Perform the response of ASR event

# NOTE:
 However, since this is Beta sample, We have changed the format of the DSN, so once you complete the firmware upgrade, you have to Set the DSN manually, please refer to the procedure below (after performing the upgrade) to understand how to write the DSN to protected area in the Nor-flash:

1: You need switch to Serial Console after complete the firmware upgrade, the method to entry, pls click the link:https://github.com/RAKWireless/wiscore/wiki/Access-serial-console 
2: When you success to entry the Console, pls press"enter", then insert the DSN command as:
<<$
<<$set -dsn Wiscore.Alexa.000000    //You can randomly generate 6 characters instead of `000000`
<<$ok
<<$q

Don't worry, the future release(higher version) will not need you to re write the DSN again and upgrades will be seemless and will get you up and running in no time. 
