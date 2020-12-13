function guessinggame {
ban=1
numero=$(ls | wc -l)
echo "Enter your name, please"
read nombre
while [[ $ban -ne 0 ]]
do
echo -e "\n $nombre, how many files does the current directory have?"
read guess
if [[ $guess -eq numero ]]
 then
 ban=0
 echo "Congratulations! you did it well $nombre :)"
elif [[ $guess -gt numero ]]
 then
 echo "$nombre, please try again, the number was too high..."
else
echo "$nombre, please try again, the number was too low..."
fi
done
}
guessinggame
