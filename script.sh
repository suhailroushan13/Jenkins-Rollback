git pull origin master
git log --oneline > log.txt
cat log.txt
git log --oneline | sed -n '2p' > log.txt
var=$(cat log.txt | head -n1 | awk '{print $1;}')
echo $var "Is your previous Commit ID"
git reset $var
git reset --soft HEAD@{1}
git commit -m "Revert"
git reset --hard
git push -f
