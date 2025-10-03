#######################################
#######   LECTURA DE FICHEROS   #######
#######################################

$fichero="listado.txt"
$buffer=get-content -path $fichero
$l=$buffer.length
for($i=0;$i -lt $l;$i++)
{
    stop-process -name $buffer[$i]
}