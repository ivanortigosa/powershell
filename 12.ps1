#######################################
#######   LECTURA DE PROCESOS   #######
#######################################

$p=get-process
$rutaFichero="procesos.xml"
$l=$p.length
$cadena="<procesos>"
$fichero="listado.txt"
for($i=0;$i -lt $l;$i++)
{
    $cadena=$cadena + "<proceso><name>" + $p[$i].processName + "</name><id>" + 
    $p[$i].id + "</id> </proceso>"
}
$cadena=$cadena + "</procesos>"
Set-Content -Path $rutaFichero -Value $cadena