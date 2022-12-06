module Dorks
   class Dork98 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 98",
            ghdb_url: "https://www.exploit-db.com/ghdb/98",
            severity: "3",
            category: "files_containing_juicy_info",
            publish_date: "2004-03-04",
            author: "anonymous",
            dork: <<~EDORK,
"phpMyAdmin" "running on" inurl:"main.php"
EDORK
            description: <<~EDESC
From phpmyadmin.net : "phpMyAdmin is a tool written in PHP intended to handle the administration of MySQL over the WWW." Great, easy to use, but lock it down! Things you can do include viewing MySQL runtime information and system variables, show processes, reloading MySQL, changing privileges, and modifying or exporting databases. Hacker-fodder for sure!
EDESC
         })

      end
   end
end
