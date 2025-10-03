#######################################
#######   LECTURA DE PROCESOS   #######
#######################################

$readbuffer=get-content -path "estilo.css"

$p=get-localuser
$rutaFichero="C:\xampp\htdocs\power\1.html"
$l=$p.length
$cadena="<html><head><style>" + $readbuffer + "</style></head><body><center><table>"
for($i=0;$i -lt $l;$i++)
{
    $cadena=$cadena + "<tr><td>" + $p[$i].Name + "</td><td>" + 
    $p[$i].Enabled + "</td> </tr>"
}
$cadena=$cadena + "</table></center></body></html>"
Set-Content -Path $rutaFichero -Value $cadena