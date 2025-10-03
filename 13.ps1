#######################################
#######   LECTURA DE PROCESOS   #######
#######################################

$readbuffer=get-content -path "estilo.css"

$p=get-process
$rutaFichero="C:\xampp\htdocs\power\index.html"
$l=$p.length
$cadena="<html><head><style>" + $readbuffer + "</style></head><body><center><table>"
for($i=0;$i -lt $l;$i++)
{
    $cadena=$cadena + "<tr><td>" + $p[$i].processName + "</td><td>" + 
    $p[$i].id + "</td> </tr>"
}
$cadena=$cadena + "</table></center></body></html>"
Set-Content -Path $rutaFichero -Value $cadena