module Dorks
   class Dork551 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 551",
            ghdb_url: "https://www.exploit-db.com/ghdb/551",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2004-10-11",
            author: "anonymous",
            dork: <<~EDORK,
intitle:"MailMan Login"
EDORK
            description: <<~EDESC
MailMan is a product by Endymion corporation that provides a web based interface to email via POP3 and SMTP. MailMan is very popular due to its amazingly easy setup and operation. MailMan is written as a Perl CGI script, the version that is shipped to customers is obfuscated in an attempt to prevent piracy. The code contains several insecure calls to open() containing user specified data. These calls can be used to execute commands on the remote server with the permissions of the user that runs CGI scripts, usually the web server user that is in most cases 'nobody'.
EDESC
         })

      end
   end
end
