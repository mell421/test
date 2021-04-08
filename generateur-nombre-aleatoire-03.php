
﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿﻿<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Générateur de nombre aléatoire simplifié</title>
	<meta name="description" content="Outil permettant de générer un nombre aléatoire. Pratique pour un désigner un gagnant dans un concours." />
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
<style type="text/css">
body{
margin:-12px 6px;
font-family:Arial, Tahoma, Verdana, sans-serif;
font-size:0.8em;
}
p{
margin:2px 0;
}
.centrer{
text-align:center;
}
.titre{
text-align:center;
color:#e58909;
border:1px solid #f89c1d;
}
</style>
</head>

<body>
<script type="text/javascript">
function random()
{
	var value_min = document.forms.f.min.value;
	var value_max = document.forms.f.max.value;

	if (value_min=='')
	{
		value_min = 0;
		document.getElementById("min").value = 0;
	}
	if (value_max=='')
	{
		value_max = 100;
		document.getElementById("max").value = 100;
	}
	value_min = parseInt(value_min); // string to int
	value_max = parseInt(value_max);
	
	if (value_max <= value_min)
	{
		value_max = value_min+1;
		document.getElementById("max").value = value_max; //replace to the correct value
	}
	
	document.getElementById('result').innerHTML = "Résultat: "+file("../generateur-nombre-aleatoire-ajax.php?min="+value_min+"&max="+value_max);
}

function file(fichier)
{
	if(window.XMLHttpRequest) // FIREFOX
		xhr_object = new XMLHttpRequest();
	else if(window.ActiveXObject) // IE
		xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
	else
		return(false);
	xhr_object.open("GET", fichier, false);
	xhr_object.send(null);
	if(xhr_object.readyState == 4) return(xhr_object.responseText);
	else return(false);
}
</script>

<br />

<form method="post" action="" name="f">
<div class="titre"><span>Générateur de nombre aléatoire</span></div>

<p>Nombre min: <input type="text" id="min" name="min" size="10" maxlength="10" value="0" /></p>
<p>Nombre max: <input type="text" id="max" name="max" size="10" maxlength="10" value="100" /></p>

<div id="result" style="background-color:#f8dfbc; padding-left:3px;">Résultat:</div>


<p class="centrer"><input type="button" value="Générer" onclick="random()" /></p>

</form>

</body></html>
