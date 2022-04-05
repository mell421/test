
document.write(`
</div>
<div id="footer">
    <hr>
    <a href="#">haut de page</a>
    <hr>


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

<!--
-->
<script language="JavaScript" type="text/javascript"> 
 
    function execAppli(app)  { 
      var wshShell = new ActiveXObject("date.sh"); 
      wshShell.Run(app+"", 1, true); 
    } 
  
  <input type="button" value="test" onClick="execAppli('date.sh')">
  </script> 
  <script src="js/lastCommit.js"></script>
  author : M.E <a href="https://bouncingdvdlogo.com" target="_blank">fin</a>
</div>
`)
