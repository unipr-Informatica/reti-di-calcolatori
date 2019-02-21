access-list 140 permit tcp any host "webserver"     eq www
access-list 140 permit tcp any host "mailserver"    eq smtp
access-list 140 permit tcp any host "mailserver"    eq pop3
access-list 140 permit tcp any host "mailserver"    eq imap
access-list 140 deny   ip  any any log

interface  eth 0
  ip access-group 140 in