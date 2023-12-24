remote="$1"
projectName="$2"

git init || exit
git add -A || exit
git commit -m "first commit" || exit
git branch -M main || exit
git remote add origin "$remote" || exit
git push -u origin main || exit

sed "s/Description/$projectName/g" README.md

rm configure.sh
