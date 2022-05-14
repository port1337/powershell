$date = get-date -Format yy-MM-dd-HH-mm

$age = (get-date).AddMonths(-3) -Format yyyyMMdd

new-item "$env:USERPROFILE/Documents/save/$date/" -type d -force
robocopy "$env:USERPROFILE/desktop/" "$env:USERPROFILE/Documents/save/$date/" /E /R:2 /W:2 /LOG+:informations.log /ETA /MAXAGE:$age /XO