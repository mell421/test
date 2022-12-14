const { log } = require('console');
var fs = require('fs')


function remove(someFile,replacement){
    fs.readFile(someFile, 'utf8', function (err,data) {
        if (err) {
          return console.log(err);
        }
        var regex=/The voice us _22({\d+} ?| > \d+; ?| &gt; \d+; ?|x\d+; ?|x\d+\(\d+\) ?)/ig;
        var result = data.replace(regex, replacement);
        
      
        fs.writeFile(someFile, result, 'utf8', function (err) {
           if (err) return console.log(err);
        });
    });
}

var aEff ='./aEff/aeff.md'
var appAll ='./apercu/apAll.txt'
var app20 ='./apercu/apercu20.md'
var app21 ='./apercu/apercu21.md'
var app22 ='./apercu/apercu22.md'
var app19 ='./apercu/apercu2019.md'
var appGlobal ='./apercu/apercuglobal.md'
var tab20 ='./tab2020.html'
var tab21 ='./tab2021.html'
var tab22 ='./tab2022.html'
var zz = './ZZ/*.txt'

var pages = [aEff,appAll,app20,app21,app22,app19,appGlobal,tab20,tab21,tab22]
for (var page in pages){
    remove(pages[page],'')
    console.log(pages[page])
    var ext = pages[page].split('.').pop();
    if(ext == "md"){
        pageHtml=pages[page].replace(ext,"html");
        remove(pageHtml,'')
    }
}


const dir = './ZZ/'
const files = fs.readdirSync(dir)

for (const file of files) {
  console.log(file)
  remove(dir+file,'')
}

