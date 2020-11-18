var index
function  sort_int(p1,p2) { return p1[index]-p2[index]; }			//fonction pour trier les nombres
function sort_char(p1,p2) { return ((p1[index]>=p2[index])<<1)-1; }	//fonction pour trier les strings

function TableOrder(e,Dec)  //Dec= 0:Croissant, 1:Décroissant
{ //---- Détermine : oCell(cellule) oTable(table) index(index cellule) -----//
	var FntSort = new Array()
	if(!e) e=window.event
	for(oCell=e.srcElement?e.srcElement:e.target;oCell.tagName!="TD";oCell=oCell.parentNode);	//determine la cellule sélectionnée
	for(oTable=oCell.parentNode;oTable.tagName!="TABLE";oTable=oTable.parentNode);				//determine l'objet table parent
	for(index=0;oTable.rows[0].cells[index]!=oCell;index++);									//determine l'index de la cellule

 //---- Copier Tableau Html dans Table JavaScript ----//
	var Table = new Array()
	for(r=1;r<oTable.rows.length;r++) Table[r-1] = new Array()

	for(c=0;c<oTable.rows[0].cells.length;c++)	//Sur toutes les cellules
	{	var Type;
		objet=oTable.rows[1].cells[c].innerHTML.replace(/<\/?[^>]+>/gi,"")
		if(objet.match(/^\d\d[\/-]\d\d[\/-]\d\d\d\d$/)) { FntSort[c]=sort_char; Type=0; } //date jj/mm/aaaa
		else if(objet.match(/^[0-9£€$\.\s-]+$/))		{ FntSort[c]=sort_int;  Type=1; } //nombre, numéraire
		else											{ FntSort[c]=sort_char; Type=2; } //Chaine de caractère

		for(r=1;r<oTable.rows.length;r++)		//De toutes les rangées
		{	objet=oTable.rows[r].cells[c].innerHTML.replace(/<\/?[^>]+>/gi,"")
			switch(Type)		
			{	case 0: Table[r-1][c]=new Date(objet.substring(6),objet.substring(3,5),objet.substring(0,2)); break; //date jj/mm/aaaa
				case 1: Table[r-1][c]=parseFloat(objet.replace(/[^0-9.-]/g,'')); break; //nombre
				case 2: Table[r-1][c]=objet.toLowerCase(); break; //Chaine de caractère
			}
			Table[r-1][c+oTable.rows[0].cells.length] = oTable.rows[r].cells[c].innerHTML
		}
	}

 //--- Tri Table ---//
	Table.sort(FntSort[index]);
	if(Dec) Table.reverse();

 //---- Copier Table JavaScript dans Tableau Html ----//
	for(c=0;c<oTable.rows[0].cells.length;c++)	//Sur toutes les cellules
		for(r=1;r<oTable.rows.length;r++)		//De toutes les rangées 
			oTable.rows[r].cells[c].innerHTML=Table[r-1][c+oTable.rows[0].cells.length];  
}

// 
var nbConclu=0
var nbConcluBis=0
var nbSem=0
var nbMois=0
 
function ajoutConclu (){
    return this.nbConclu += 1
}
function ajoutConcluBis (){
    return this.nbConcluBis += 1
}
function ajoutSem (){
    return this.nbSem += 1
}
function ajoutMois (){
    return this.nbMois += 1
}


// 

google.charts.load('current', {'packages':['line']});
      google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'Day');
      data.addColumn('number', 'a');
      data.addColumn('number', 'r');
      data.addColumn('number', 'm');
      data.addColumn('number', 's');

      data.addRows([
        [1,  37.8, 80.8, 41.8, 41.8],
        [2,  30.9, 69.5, 32.4, 41.8],
        [3,  25.4,   57, 25.7, 41.8],
        [4,  11.7, 18.8, 10.5, 41.8],
        [5,  11.9, 17.6, 10.4, 41.8],
        [6,   8.8, 13.6,  7.7, 41.8],
        [7,   7.6, 12.3,  9.6, 41.8],
        [8,  12.3, 29.2, 10.6, 41.8],
        [9,  16.9, 42.9, 14.8, 41.8],
        [10, 12.8, 30.9, 11.6, 41.8],
        [11,  5.3,  7.9,  4.7, 41.8],
        [12,  6.6,  8.4,  5.2, 41.8],
        [13,  4.8,  6.3,  3.6, 41.8],
        [14,  4.2,  6.2,  3.4, 41.8]
      ]);

      var options = {
        chart: {
          title: 'taux de ARMS',
          subtitle: ''
        },
        width: 900,
        height: 500
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }