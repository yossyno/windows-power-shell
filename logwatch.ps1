
Get-Content -Wait -Tail 1 -Path "C:\Users\ifielduser\indoor\manager\target\tomcat\logs\spring.log" |
 ForEach-Object {`
 If($_ -like "*SQLException*")`
# If($_ -like "*ERROR*")`
  { 
    python C:\Users\ifielduser\indoor\alert_notis\post_alert.py
    break
  }`
 }
 

