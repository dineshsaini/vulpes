module Dorks
   class Dork699 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 699",
            ghdb_url: "https://www.exploit-db.com/ghdb/699",
            severity: "3",
            category: "files_containing_juicy_info",
            publish_date: "2004-11-20",
            author: "anonymous",
            dork: <<~EDORK,
inurl:report "EVEREST Home Edition "
EDORK
            description: <<~EDESC
Well what can be said about this one, I've added it to the DB under Juicy info, however it could have easilly gone under virtually any of the lists as it just give out Soooo much info. I can for instance find out the admin username (not just the adin every user) and also if it password protected and if the password ever expires plus is it a current user account, also do the same for any guest accounts, Ok nice and easy how about the O/S and all the Mapped Drive locations all there along with installed software and even currently running applications and processes. Site admins would have to be mad to leave this stuff open, but as we all know from the GHDB Site admins do weird and funny stuff. This one just gives out to much to list, so go have a look and see what you can find.
EDESC
         })

      end
   end
end
