module Dorks
   class Dork477 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 477",
            ghdb_url: "https://www.exploit-db.com/ghdb/477",
            severity: "3",
            category: "pages_containing_login_portals",
            publish_date: "2004-09-18",
            author: "anonymous",
            dork: <<~EDORK,
intitle:"TUTOS Login"
EDORK
            description: <<~EDESC
TUTOS stands for "The Ultimate Team Organization Software." This search finds the login portals to TUTOS.Adding scheme.php in the /php/ directory seems to allow cool things. There seems to be a foothold for SQL table structures and, upon errors, directory structure of the server. It is said that with the username linus and the password guest you can see what it looks like when your logged in. This is unconfirmed as of now.
EDESC
         })

      end
   end
end
