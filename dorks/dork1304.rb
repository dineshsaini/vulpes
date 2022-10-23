module Dorks
   class Dork1304 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 1304",
            ghdb_url: "https://www.exploit-db.com/ghdb/1304",
            severity: "5",
            category: "advisories_and_vulnerabilities",
            publish_date: "2006-02-13",
            author: "anonymous",
            dork: <<~EDORK,
(intitle:"Flyspray setup"|"powered by flyspray 0.9.7") -flyspray.rocks.cc
EDORK
            description: <<~EDESC
exploiting a bug in EGS Enterprise Groupware System 1.0 rc4, I found this dork: (intitle:"Flyspray setup"|"powered by flyspray 0.9.7") -flyspray.rocks.cc It is related to the installation script of FileSpray 0.9.7, now I'm going to test 0.9.8-9 by now switch to sql/ directory and search the install-0.9.7.php script explaination link: http://retrogod.altervista.org/egs_10rc4_php5_incl_xpl.htmlexploit adjusted for flyspray: http://retrogod.altervista.org/flyspray_097_php5_incl_xpl.html
EDESC
         })

      end
   end
end
