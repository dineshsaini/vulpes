module Dorks
   class Dork5299 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 5299",
            ghdb_url: "https://www.exploit-db.com/ghdb/5299",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2019-07-30",
            author: "Francis Al Victoriano",
            dork: <<~EDORK,
inurl:/site/login.php
EDORK
            description: <<~EDESC
# Exploit Title: Login PAge
EDESC
         })

      end
   end
end
