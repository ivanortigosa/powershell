#######################################
#######    CALCULO DEL MÍNIMO   #######
#######################################

$p=get-process
$l=$p.length
$min=$p[0].ID;
for($i=0; $i -lt $l; $i++) 
{
    $id=$p[$i].ID
    if($id -lt $min) {$min=$id}
}
write-host "El ID mas bajo es " $min

#######################################
#######    CALCULO DEL MAXIMO   #######
#######################################

$p=get-process
$l=$p.length
$max=0;
for($i=0; $i -lt $l; $i++) 
{
    $id=$p[$i].ID
    if($id -gt $max) {$max=$id}
}
write-host "El ID mas alto es " $max

#######################################
#######    CALCULO DEL MAXIMO   #######
#######################################

$p=get-process
$l=$p.length
$max=$p[0].cpu;
$proceso="";
for($i=1; $i -lt $l; $i++) 
{
    $id=$p[$i].cpu
    if($id -gt $max) {
        $max=$id
        $proceso=$p[$i].ProcessName
        }
}
write-host "El proceso $proceso tiene el tiempo maximo de CPU 
con $max sgundos"

#######################################
#######    CALCULO PRIORIDAD    #######
#######################################

$p=get-process
$l=$p.length
$max=$p[0].basepriority;
$proceso=$p[0].ProcessName;
for($i=1; $i -lt $l; $i++) 
{
    $id=$p[$i].basepriority
    if($id -gt $max) {
        $max=$id
        $proceso=$p[$i].ProcessName
        }
}
write-host "El proceso $proceso tiene prioridad maxima con nivel $max"

###################################################
#######    MOSTRAR PRIORIDADDE UN PROCESO   #######
###################################################

chcp 65001 > $null
$n=read-host -prompt "Nombre del proceso"
$p = get-process
$l = $p.length

for ($i=0; $i -lt $l; $i++) {
    if ($n -eq $p[$i].ProcessName) {
        write-host El proceso $n tiene una prioridad de $p[$i].basepriority
    }
}

###################################################
###############    CONTAR PROCESOS   ##############
###################################################

$s=0
$p=get-process
$l=$p.length
for($i=0;$i -lt $l; $i++) {
    $s=$s+1
}
write-host $s $l

#################################################
############# MOSTRAR USO DE CPU ################
#################################################

$s=0
$p=get-process
$l=$p.length
for($i=0;$i -lt $l;$i++)
{
$s=$s+$p[$i].CPU
}
$m=$s/$l
write-host "La media de uso de la CPU es $m segundos"