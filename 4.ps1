#######################################
#######	 LISTADO DE PROCESOS	#######
#######################################


$p=get-process
$l=$p.length
Write-Host "Hay $l procesos"
$m=$p[0].PM/(1024*1024)
Write-Host $p[0].processName $m "M"
