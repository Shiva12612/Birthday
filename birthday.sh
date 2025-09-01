#!/bin/bash
today=$(date +'%d-%m')

friends=(
  "Shiva:sm4524457@gmail.com:01-09"
)

for entry in "${friends[@]}"; do
	  name=$(echo $entry | cut -d: -f1)
	  email=$(echo $entry | cut -d: -f2) 
	  bday=$(echo $entry | cut -d: -f3)
   if [ "$today" == "$bday" ]; then
	    (
	     echo "Subject: 🎉🎂 Happy Birthday, $name 🎂🎉"
             echo "MIME-Version: 1.0"
	     echo "Content-Type: text/html"
	     echo
	     echo "<html>"
             echo "<body style='font-family: Arial, sans-serif; text-align: center; background-color: #fff8e1; padding: 20px'>"
	   
             # Balloons

             echo "<img src='https://media.giphy.com/media/3o6Zt481isNVuQI1l6/giphy.gif' width='400' alt='Balloons'>"						     

             echo "<h1 style='color: #e91e63;'>🎉✨ Happy Birthday <span style=\"font-size: 32px; color: #3f51b5;\">$name</span> ✨🎉</h1>"
						      
             echo "<p style='font-size: 20px;'>🥳 Wishing you lots of <b style=\"color:#ff9800;\">joy</b>, <b style=\"color:#4caf50;\">success</b> and <b style=\"color:#9c27b0;\">happiness</b> on your special day 🎂🎁</p>"
						   
            # Cake GI
             echo "<img src='https://media.giphy.com/media/26tOZ42Mg6pbTUPHW/giphy.gif' width='350' alt='Cake'>"
						      
             echo "<p style='font-size: 18px;'>💐🌟 May your year ahead be as wonderful as you are 🌟💐</p>"
             echo "<h2 style='color:#ff5722;'>🎊🥳💖🎂🎉🍰🎈🎁✨</h2>"
						      
             echo "<br>"
             echo "<p style='font-size:14px;color:gray;'>--<br>Mail sent automatically by <b>Shiva Mishra</b> 💌 (Please don’t reply)</p>"
             echo "</body>"
             echo "</html>"
           ) | msmtp "$email"

          echo "✅ Stylish Birthday mail with GIF sent to $name ($email)"
   fi
done

