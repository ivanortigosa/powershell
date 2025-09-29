#######################################
#######	 LISTADO DE PROCESOS	#######
#######################################

$a=read-host -promt "Introduce ID del proceso"
$b=read-host -promt "Seguro que quieres cerrar el proceso"
if($b -eq "s"){
kill $a
}