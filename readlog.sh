#!/bin/bash
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++
repper=`date +%d/%B/%Y -d "yesterday"`
echo "            WebLog Report - $repper"
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++
count=0
escend=')'
beg1='Mozilla/5.0 ('
beg2='"-"'
while IFS='' read -r line || [[ -n "$line" ]]; do
ip=`echo $line | grep "GET / HTTP/1.1" | awk '{print $1}'`
time=`echo  $line | grep "GET / HTTP/1.1" | awk '{print substr($4, 2, length($0) - 2)}'`
dev=`echo $line | awk -v FS="(${beg1}|${escend})" '{print $2}'` 2>/dev/null
mob=`echo  $line | grep "Mobile"`

if [[ ! -z "$ip" ]]
then
city=`curl -s https://ipinfo.io/${ip}/city`
region=`curl -s https://ipinfo.io/${ip}/region`
country=`curl -s https://ipinfo.io/${ip}/country`
org=`curl -s https://ipinfo.io/${ip}/org`
   echo ---------------------------------------------------- 
   echo "IP:        $ip"
   echo "Date-Time: $time"
if [ -z "$mob" ]
then
   echo "Mobile:    No"
else
   echo "Mobile:    Yes"
fi

if [ -z "$dev" ]
then
   dev=`echo $line | awk -v FS="(${beg2} |${escend})" '{print $2}'` 2>/dev/null
fi

   echo "Device:    $dev"
   echo "Location:  $city, $region, $country"
   echo "Operator:  $org"
   echo ----------------------------------------------------
count=$((count+1));
fi
done < /var/log/apache2/access.log
echo 
echo 
echo -------------------
echo '|' Total Visits: $count '|'
echo -------------------
