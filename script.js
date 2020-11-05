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

