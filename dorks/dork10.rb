module Dorks
   class Dork10 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 10",
            ghdb_url: "https://www.exploit-db.com/ghdb/10",
            severity: "2",
            category: "files_containing_usernames",
            publish_date: "2003-06-24",
            author: "anonymous",
            dork: <<~EDORK,
sh_history files
EDORK
            description: <<~EDESC
Ok, this file contains what a user typed at a shell command prompt. You shouldn't advertise this file. You shouldn't flash it to a web crawler. It contains COMMANDS and USERNAMES and stuff... *sigh* Sometimes there aren't words to describe how lame people can be. This particular theme can be carried further to find all sorts of things along these lines like .profile, .login, .logout files, etc. I just got bored with all the combinations...
EDESC
         })

      end
   end
end
