module Dorks
   class Dork942 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 942",
            ghdb_url: "https://www.exploit-db.com/ghdb/942",
            severity: "4",
            category: "various_online_devices.nero",
            publish_date: "2005-04-20",
            author: "anonymous",
            dork: <<~EDORK,
intitle:"NeroNET - burning online"
EDORK
            description: <<~EDESC
NeroNet is an online burning device by Nero. Basically with this query you'll get a listing of active servers running the software. You can only do things like view active jobs users and the see what disc the server is burning on. However if you manage to log in as the Administrator you can have a bit more fun like change the server and recording settings. Well they were smart enough to convienently place the default password located within the softwares manual.
EDESC
         })

      end
   end
end
