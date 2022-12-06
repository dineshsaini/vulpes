module Dorks
   class Dork622 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 622",
            ghdb_url: "https://www.exploit-db.com/ghdb/622",
            severity: "5",
            category: "advisories_and_vulnerabilities",
            publish_date: "2004-10-26",
            author: "anonymous",
            dork: <<~EDORK,
inurl:"slxweb.dll"
EDORK
            description: <<~EDESC
salesLogix is the Customer Relationship Management solution thatdrives sales performance in small to medium-sized businesses through Sales, Marketing, and Customer Support automation and back-office integration.The problem:By manipulating the cookies used by the Web Client, it is possible totrick the server into authenticating a remote user as the CRM administrator without requiring a password. It is also possible to perform SQL injection attacks on the SQL serverthat is used as the data store for the SalesLogix CRM system, reveal detailed error reports contained in HTTP headers and disclose the real filesystem paths to various SalesLogix directories. The SalesLogix server itself is vulnerable to an attack that wouldallow a malicious user to obtain the username and password used to access the SQL server used as a data store. The disclosed username and password always have read/write permissions on the database. Another vulnerability in the SalesLogix server allows anunauthenticated user to upload arbitrary files to the server in any directory (s)he chooses.http://www.securityfocus.com/bid/11450
EDESC
         })

      end
   end
end
