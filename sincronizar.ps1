#######################################
########	SINCRONIZAR GITHUB	#######
#######################################

$a=read-host -prompt "Introduce el nombre de la versión" 

git add .
git commit -m $a
git push --force origin main
