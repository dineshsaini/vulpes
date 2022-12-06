module Dorks
   class Dork449 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 449",
            ghdb_url: "https://www.exploit-db.com/ghdb/449",
            severity: "5",
            category: "advisories_and_vulnerabilities",
            publish_date: "2004-08-25",
            author: "anonymous",
            dork: <<~EDORK,
"Powered by Gallery v1.4.4"
EDORK
            description: <<~EDESC
http://www.securityfocus.com/bid/10968/discussion/"A vulnerability is reported to exist in Gallery that may allow a remote attacker to execute malicious scripts on a vulnerable system. This issue is a design error that occurs due to the 'set_time_limit' function.The issue presents itself because the 'set_time_limit' function forces the application to wait for 30-seconds before the verification and discarding of non-image files takes place. This allows for a window of opportunity for an attacker to execute a malicious script on a server.Gallery 1.4.4 is reported prone to this issue, however, other versions may be affected as well. "
EDESC
         })

      end
   end
end
