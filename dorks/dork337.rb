module Dorks
   class Dork337 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 337",
            ghdb_url: "https://www.exploit-db.com/ghdb/337",
            severity: "4",
            category: "sensitive_directories",
            publish_date: "2004-07-16",
            author: "anonymous",
            dork: <<~EDORK,
index.of.password
EDORK
            description: <<~EDESC
These directories are named "password." I wonder what you might find in here. Warning: sometimes p0rn sites make directories on servers with directories named "password" and single html files inside named things liks "horny.htm" or "brittany.htm." These are to boost their search results. Don't click them (unless you want to be buried in an avalanche of p0rn...Moderator note: This googledork has expired ! See also:http://johnny.ihackstuff.com/index.php?module=ProdReviews&func=showcontent&id=380
EDESC
         })

      end
   end
end
