module Dorks
   class Dork15 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 15",
            ghdb_url: "https://www.exploit-db.com/ghdb/15",
            severity: "2",
            category: "sensitive_directories",
            publish_date: "2003-06-24",
            author: "anonymous",
            dork: <<~EDORK,
Look in my backup directories! Please?
EDORK
            description: <<~EDESC
Backup directories are often very interesting places to explore. More than one server has been compromised by a hacker's discovery of sensitive information contained in backup files or directories. Some of the sites in this search meant to reveal the contents of their backup directories, others did not. Think about it. What.s in YOUR backup directories? Would you care to share the contents with the whole of the online world? Probably not. Whether intentional or not, bsp.gsa.gov reveals backup directory through Google. Is this simply yet another misconfigured .gov site? You decide. BSP stands for "best security practices," winning this site the Top GoogleDork award for this category.
EDESC
         })

      end
   end
end
