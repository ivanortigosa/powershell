#######################################
#######        FUNCIONES        #######
#######################################

#Ejemplo 1:

#function mensaje {
#    param(
#        [string]$Name
#    )
#    write-host "Hola, $Name"
#}
#mensaje -Name "Pepe"

#Ejemplo 2:

#function suma {
#    param(
#        [int]$n1,
#        [int]$n2
#    )
#    $suma=$n1+$n2
#    write-Output "La suma es, $suma"
#}
#suma -n1 7 -n2 5

#Ejemplo 3:

#function suma {
#    param(
#        [int]$n1,
#        [int]$n2
#    )
#    $suma=$n1+$n2
#    return $suma
#}
#$resultado = suma -n1 4 -n2 6
#write-host $resultado

#Ejemplo 4:

#function suma {
#    param(
#        [int]$n1,
#        [int]$n2
#    )
#    $suma=$n1+$n2
#    return $suma
#}
#$n1= read-host -promt "Operando 1"
#$n2= read-host -promt "Operando 2"
#$resultado = suma -n1 $n1 -n2 $n2
#write-host $resultado

#Ejemplo 5 Comparar mayor y menos: (-gt es mayor y -lt es menor y -eq es igual)

#function comparar {
#    param(
#        [int]$n1,
#        [int]$n2
#    )
#    if($n1 -gt $n2)
#    {
#        $mayor=$n1
#    }
#    else {
#        $mayor=$n2
#    }
#    return $mayor
#}
#$n1= read-host -promt "Operando 1"
#$n2= read-host -promt "Operando 2"
#$resultado = comparar -n1 $n1 -n2 $n2
#write-host "El mayor es $resultado"

#Ejemplo 6 Contador:

function busca() {
    param(
        [string]$nombre
    )
        $contador=0
        $p=get-process
        $l=$p.length
    for($i=0;$i -lt $l;$i++)
    {
        $n=$p[$i].processName
    if ($n -eq $nombre)
    {
        $contador++
    }
    }
    return $contador
}
$nombre= read-host -prompt "Introduce el nombre del proceso"
$contador= busca -nombre $nombre
write-host "Hay $contador instancias de $nombre"
