module Dorks
   class Dork1079 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 1079",
            ghdb_url: "https://www.exploit-db.com/ghdb/1079",
            severity: "5",
            category: "files_containing_juicy_info",
            publish_date: "2005-08-23",
            author: "anonymous",
            dork: <<~EDORK,
contacts ext:wml
EDORK
            description: <<~EDESC
Forget Bluetooth Hacking! You'll be amazed, at how many people sync their Cell Phones to the same Computers they run some type of Server on. This Query literally gives you access to peoples private contact lists that are ether on there Smart Phones', or on their Windows CE wireless devices.An attacker could Spoof Emails with the "SIG" details of the persons Phone firmware, or simply collect the cellular numbers for something later on down the road.I even hypotheticlly came across some private text messages!
EDESC
         })

      end
   end
end
