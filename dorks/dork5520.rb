module Dorks
   class Dork5520 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 5520",
            ghdb_url: "https://www.exploit-db.com/ghdb/5520",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2019-09-12",
            author: "Reza Abasi",
            dork: <<~EDORK,
inurl:"/usp-core/app/authUpdate"
EDORK
            description: <<~EDESC
Login Portal:
Reza Abasi(Turku)
EDESC
         })

      end
   end
end
