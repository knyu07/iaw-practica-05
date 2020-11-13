#Práctica 5: Balanceador de carga con Apache

Lo primero que haremos será crear un repositorio público para el archivo 00-default.conf

echo "# balanceador" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/knyu07/balanceador.git
git push -u origin main
                
…or push an existing repository from the command line
git remote add origin https://github.com/knyu07/balanceador.git
git branch -M main
git push -u origin main

