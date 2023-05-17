# Reset
rm -rf .git
rm main.md
rm server.md
rm client.md

touch main.md
touch server.md
touch client.md
touch .gitignore
echo "*.sh" >> .gitignore
git init
# Main setup commit
echo "initialize" >> main.md
git add .
git commit -m "initialize"
echo "c1" >> main.md
git add .
git commit -m "c1"
echo "c2" >> main.md
git add .
git commit -m "c2"

# Server setup commit
git checkout -b server
echo "c3" >> server.md
git add .
git commit -m "c3"
echo "c4" >> server.md
git add .
git commit -m "c4"
echo "c5" >> server.md
git add .
git commit -m "c5"


# Client setup commit
git checkout server~2
git checkout -b client

echo "c6" >> client.md
git add .
git commit -m "c6"
echo "c7" >> client.md
git add .
git commit -m "c7"

# Main do some work
git checkout master 
echo "c8" >> main.md
git add .
git commit -m "c8"
echo "c9" >> main.md
git add .
git commit -m "c9"