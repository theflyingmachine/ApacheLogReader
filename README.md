#            Apache LogReader - By Eric Abraham Kalloor
https://github.com/theflyingmaching/ApacheLogReader

Apache LogReader is a shell script which runs through apache web server access logs and provides meaningful summary about the visitors.

# Usage: 
> Apache LogReader can be executed by calling the readlog.sh script

      example: ./readlog.sh

# Pro-tips: 
> For frequent access, set the script as alias by adding bellow line in ~/.bashrc file.

      alias <aliasname>='bash <path/to/script>/readlog.sh'
<aliasname> and <path/to/script> must be modified as per your taste.


> For getting the visitor report via email every day, set this script as cronjob and configure your email.


# Sample Output:
    ++++++++++++++++++++++++++++++++++++++++++++++++++++
                WebLog Report - 17/July/2018
    ++++++++++++++++++++++++++++++++++++++++++++++++++++
    ----------------------------------------------------
    IP:        5.160.148.144
    Date-Time: 18/Jul/2018:12:54:56
    Mobile:    No
    Device:    (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36"
    Location:  Tehran, Ostan-e Tehran, IR
    Operator:  AS42337 Respina Data processing company PJSC
    ----------------------------------------------------
    ----------------------------------------------------
    IP:        185.29.162.30
    Date-Time: 18/Jul/2018:13:43:47
    Mobile:    No
    Device:    (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36"
    Location:  Pignataro Maggiore, Campania, IT
    Operator:  AS60559 Maxfon Srl
    ----------------------------------------------------
    ----------------------------------------------------
    IP:        198.199.93.244
    Date-Time: 18/Jul/2018:14:26:23
    Mobile:    No
    Device:    zgrab/0.x"
    Location:  San Francisco, California, US
    Operator:  AS14061 DigitalOcean, LLC
    ----------------------------------------------------
    ----------------------------------------------------
    IP:        81.225.22.37
    Date-Time: 18/Jul/2018:14:47:25
    Mobile:    No
    Device:    (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7"
    Location:  Enåker, Vastmanlands Lan, SE
    Operator:  AS3301 Telia Company AB
    ----------------------------------------------------
    ----------------------------------------------------
    IP:        81.225.22.37
    Date-Time: 18/Jul/2018:14:47:25
    Mobile:    No
    Device:    (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36"
    Location:  Enåker, Vastmanlands Lan, SE
    Operator:  AS3301 Telia Company AB
    ----------------------------------------------------
    ----------------------------------------------------
    IP:        164.215.246.145
    Date-Time: 18/Jul/2018:14:48:15
    Mobile:    No
    Device:    (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7"
    Location:  , Tehran, IR
    Operator:  AS41881 Fanava Group
    ----------------------------------------------------
