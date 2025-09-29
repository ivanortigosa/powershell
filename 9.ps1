#######################################
#######   BUSCAR UN PROCESO	    #######
#######################################

param (
$proceso
)
$f=0
$p=get-process
$l=$p.length
for ($i=0;$i -lt $l;$i++)
{
if ($p[$i].ProcessName -eq $proceso)
{
    $f=1
}
}
if ($f -eq 1)
    {write-host "Proceso " $proceso " Encontrado"}
else
    {write-host "Proceso " $proceso " no encontrado"}
