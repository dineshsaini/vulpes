module Dorks
   class Dork3845 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 3845",
            ghdb_url: "https://www.exploit-db.com/ghdb/3845",
            severity: "3",
            category: "files_containing_juicy_info",
            publish_date: "2013-04-22",
            author: "anonymous",
            dork: <<~EDORK,
filetype:php -site:php.net intitle:phpinfo "published by the PHP Group"
EDORK
            description: <<~EDESC
Tries to reduce false positive results from similar dorks. Finds pages containing output from phpinfo(). This function is used to debug and test PHP installations by listing versions, extensions, configurations, server information, file system information, and execution environment. The output of this function should not be included in production environments and certain versions of this function are vulnerable to reflected XSS attacks. - Andy G - twitter.com/vxhex
EDESC
         })

      end
   end
end
