module Dorks
   class Dork1 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 1",
            ghdb_url: "https://www.exploit-db.com/ghdb/1",
            severity: "3",
            category: "files_containing_juicy_info",
            publish_date: "2003-06-24",
            author: "anonymous",
            dork: <<~EDORK,
squid cache server reports
EDORK
            description: <<~EDESC
These are squid server cache reports. Fairly benign, really except when you consider using them for evil purposes. For example, an institution stands up a proxy server for their internal users to get to the outside world. Then, the internal user surf all over to their hearts content (including intranet pages cuz well, the admins are stupid) Voila, intranet links show up in the external cache report. Want to make matters worse for yourself as an admin? OK, configure your external proxy server as a trusted internal host. Load up your web browser, set your proxy as their proxy and surf your way into their intranet. Not that I've noticed any examples of this in this google list. *COUGH* *COUGH* *COUGH* unresolved DNS lookups give clues *COUGH* *COUGH* ('scuse me. must be a furball) OK, lets say BEST CASE scenario. Let's say there's not security problems revealed in these logs. Best case scenario is that outsiders can see what your company/agency/workers are surfing.
EDESC
         })

      end
   end
end
