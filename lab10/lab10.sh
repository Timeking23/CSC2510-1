HI='\033[0;32m' 
NORMAL='\033[0m' 
echo -e "${HI}1. starts or ends with Jose$NORMAL"
grep -E --color=always -m8 '^Jose|Jose$' phonebook.dat

echo -e "${HI}2.Contain a sequence of at least 27 upper or lower-case alphabetic character$NORMAL"
grep -E --color=always -m8 '[a-zA-Z]{27}' phonebook.dat  

echo -e  "${HI}3. Consist of more than 18 characters$NORMAL"
grep -E --color=always -m8 '^.{19,}' phonebook.dat  

echo -e "${HI}4. Contains exactly 10 characters$NORMAL"
grep -E --color=always -m8 '^[a-zA-Z]{10}$' phonebook.dat
# the ^ and & force the match to be “anchored” to beginning or end of a line,
#https://www.gnu.org/software/grep/manual/grep.html#Regular-Expressions
#“Grep .” GNU Grep 3.11, www.gnu.org/software/grep/manual/grep.html#Anchoring-1. Accessed 31 Mar. 2024. 

echo -e "${HI}5. Contains a sequence between 6 and 8 upper- or lower-case alphabetic characters.$NORMAL"
grep -E --color=always -m8 '\s[a-zA-Z]{6,8}\s' phonebook.dat  

echo -e "${HI}6. Contains a local phone number$NORMAL"
grep -E --color=always -m8 '[0-9]{3}-[0-9]{3}-[0-9]{4}$' phonebook.dat

echo -e "${HI}7. Contains a valid URL on a line by itself$NORMAL"
grep -E --color=always -m8 '^(http|HTTP)://[a-zA-Z]+\.[a-zA-Z]+\.(com|edu)' phonebook.dat  