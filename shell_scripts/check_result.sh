
#!/bin/bash
# Script to check reuslt for a person on kerala website is available or not
while : ; do #loop
	# Download result
	curl 'http://results.kerala.nic.in/dhsefy15/dhsefy.asp?treg=3000001&
	sid=0.3811362434644252' -H 'DNT: 1' -H 'Accept-Encoding: gzip, deflate, 
	sdch' -H 'Accept-Language: en-US,en;q=0.8,hi;q=0.6' -H 'User-Agent: 
	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) 
	Chrome/48.0.2564.116 Safari/537.36' -H 'Accept: */*' -H 'Referer: 
	http://results.kerala.nic.in/dhsefy15/' -H 'Connection: keep-alive' --compressed
	> /tmp/result.html

	# Find name and break loop if found
	grep -i "name_of_the_person" /tmp/result.html && break

	sleep 1000 #seconds
done

#media player start (plays given youtube link)

vlc "https://www.youtube.com/watch?v=U-PXEe-qeK4" & google-chrome /tmp/result.html #opening result in chrome