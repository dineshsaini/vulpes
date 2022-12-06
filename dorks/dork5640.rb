module Dorks
   class Dork5640 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 5640",
            ghdb_url: "https://www.exploit-db.com/ghdb/5640",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2019-11-11",
            author: "Reza Abasi",
            dork: <<~EDORK,
inurl:"/index.php/main/login"
EDORK
            description: <<~EDESC
Login Portal:
inurl:"/index.php/Main/Forgot_Password"
Reza Abasi(Turku)
EDESC
         })

      end
   end
end
