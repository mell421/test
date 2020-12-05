
document.write(`
<div id="footer">
    <hr>
    <p> </p>
    <p>me contacter</p>
    <hr>


    <!-- -->
    <!-- -->
    <!-- -->
    <!-- -->
    <!-- -->
    <!-- -->
    <!-- -->


    <!--// imprimer la page -->
<script LANGUAGE="JavaScript">
<!--
function printit(){
  if (NS) {
    window.print();
  } else {
    var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
    document.body.insertAdjacentHTML('beforeEnd', WebBrowser);

    WebBrowser1.ExecWB(6, 2);//Use a 1 vs. a 2 for a prompting dialog box
    WebBrowser1.outerHTML = "";
  }
}
//-->
</script>


<!-- -->


<script language="Javascript">
var NS = (navigator.appName == "Netscape");
var VERSION = parseInt(navigator.appVersion);

if (VERSION > 3) {
  document.write('<form><input type=button value="Imprimer la page" name="Print" onClick="printit()"></form>');
}
</script>


<!-- -->


<!--// date dernière maj -->
<script LANGUAGE="JavaScript">

//on prend la date du fichier
var lastMod = document.lastModified;

//un tableau contenant les noms des mois
var tabMois = new Array("Janvier", "Fevrier", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Decembre");

//on construit un objet de type date avec la date du fichier
var lastDate = new Date(lastMod);
var annee = lastDate.getFullYear();
var hh = lastDate.getHours();
var mm = lastDate.getMinutes();

var heure = (hh > 9? hh:"0" + hh);
heure += ":" + (mm > 9? mm:"0" + mm);

document.write("<center>Dernière date de mise à jour : ");
document.write(lastDate.getDate() + " ");
document.write(tabMois[lastDate.getMonth()] + " ");
document.write(annee + " ");
document.write(" à " + heure + "</center>");

</script>

<!-- -->






</div>
`)

  
  
  

  
