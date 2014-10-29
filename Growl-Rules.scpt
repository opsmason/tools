(*
## Summary
Some Growl rules for unplugging the Macbook.
1. Eject all volumes, so you don't get "this vlume wasn't ejected properly" errors for the TimeMachine Volume.
2. Turn off Bluetooth so that they keyboard / mouse don't pop in and out of connectivity when I'm in the conference roo, down the hall.

## Prerequsities
1. Install Growl http://growl.info/
2. Install Unplugged http://www.briksoftware.com/products/unplugged/
3. Install blueutil http://www.frederikseiffert.de/blueutil/

## Usage
Copy this file to ~/Library/Application Scripts/com.Growl.GrowlHelperApp/Rules.scpt. If you already have a Rules.scpt, then just copy the Unplugged rules into the file.

## Reference
* https://discussions.apple.com/thread/439472
* https://discussions.apple.com/thread/3179367
* http://www.frederikseiffert.de/blueutil/
* http://growl.info/documentation/applescript-rules
* http://hints.macworld.com/article.php?story=20080529142859915
*)

using terms from application "Growl"
	on evaluate notification with notification
		-- Start rules for Unplugged
		if notification's app name is "Unplugged" and notification's note title is "Unplugged" then
			tell application "Finder" to eject (every disk whose ejectable is true and local volume is true)
			switchbluetooth("off")
			return {notification return:notification}
		end if
		if notification's app name is "Unplugged" and notification's note title is "Plugged" then
			switchbluetooth("on")
			return {notification return:notification}
		end if
		-- End rules for Unplugged
		
		--Ultimately return what you want Growl to do with the notification
	end evaluate notification
end using terms from


to switchbluetooth(mode)
		
	do shell script "/usr/local/bin/blueutil " & mode
		
end switchbluetooth
