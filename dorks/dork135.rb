module Dorks
   class Dork135 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 135",
            ghdb_url: "https://www.exploit-db.com/ghdb/135",
            severity: "5",
            category: "error_messages.sablotron",
            publish_date: "2004-03-11",
            author: "anonymous",
            dork: <<~EDORK,
warning "error on line" php sablotron
EDORK
            description: <<~EDESC
sablotron is an XML toolit thingie. This query hones in on error messages generated by this toolkit. These error messages reveal all sorts of interesting stuff such as source code snippets, path and filename info, etc.
EDESC
         })

      end
   end
end
