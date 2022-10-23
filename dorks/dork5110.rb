module Dorks
   class Dork5110 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 5110",
            ghdb_url: "https://www.exploit-db.com/ghdb/5110",
            severity: "6",
            category: "network_or_vulnerability_data.silverstream",
            publish_date: "2019-02-15",
            author: "Manish Bhandarkar",
            dork: <<~EDORK,
allinurl:"/SilverStream/Meta/"
EDORK
            description: <<~EDESC
Category : Advisories and Vulnerabilities
Description : Dork for finding to disclose data from websites which uses
SilverStream software. It is a web services-oriented applications.
Below are the list of Vulnerability Multiple data disclose
- silver stream server live statistic of time, memory status, session,
license, and more
- Current sessions details of the users who logged in in websites
- Software License key also can find setup of VM to download application
- Access to Silveradmin.jar file which administer the SilverStream Server
- Database name disclose as well as version, Table, columns names etc
- Admin data
- And So on....
Below are few more option available to get data you can play around on URL
/SilverStream/ :-
Administration
Classes
ClusterAdmin
Downloads
ErrorLogs
FullTextIndexer
Listeners
Login
Logout
Meta
Objectstore
Pages
Permissions
Renamer
Resources
Security
Sessions
Statistics
Timestamps
VersionCheck
Date : 10/2/2019
Blog : https://hackingforsecurity.blogspot.com/
EDESC
         })

      end
   end
end
