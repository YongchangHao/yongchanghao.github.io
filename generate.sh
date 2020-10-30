cd src

cp jemdoc.css ../
for file in `git status -s | grep -E "^ M" | grep -E "\.jemdoc$" | cut -f 3 -d " "`
do
  jemdoc -o ../ $file
done


