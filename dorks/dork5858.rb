module Dorks
   class Dork5858 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 5858",
            ghdb_url: "https://www.exploit-db.com/ghdb/5858",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2020-03-31",
            author: "Reza Abasi",
            dork: <<~EDORK,
site:*/signup/password.php
EDORK
            description: <<~EDESC
site:*/signup/password.php
Login Portal:
site:*/signup/password.php
Reza Abasi(Turku)
EDESC
         })

      end
   end
end
