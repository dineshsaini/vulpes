module Dorks
   class Dork511 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 511",
            ghdb_url: "https://www.exploit-db.com/ghdb/511",
            severity: "4",
            category: "web_server_detection",
            publish_date: "2004-09-26",
            author: "anonymous",
            dork: <<~EDORK,
intitle:AnswerBook2 inurl:ab2/ (inurl:8888 | inurl:8889)
EDORK
            description: <<~EDESC
First of all this search indicates solaris machines and second the webservice is vulnerable to a format string attack.Sun's AnswerBook 2 utilizes a third-party web server daemon (dwhttpd) that suffers from a format string vulnerability. The vulnerability can be exploited to cause the web server process to execute arbitrary code. The web server runs as user and group 'daemon' who, under recent installations of Solaris, owns no critical fileshttp://www.securiteam.com/unixfocus/5SP081F80K.htm
EDESC
         })

      end
   end
end
