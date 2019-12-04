[33mcommit d2e887938d707252eaa80fb5d111e4bc0774355d[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Rybin Andrey <rybin.ag@gmail.com>
Date:   Wed Dec 4 11:57:05 2019 +0300

    lvl5

[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex 540f83d..4b994a6 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -1,4 +1,5 @@[m
 /node_modules/[m
[32m+[m[32m/coverage[m
 *.log[m
 dist[m
 .tern-port[m
[1mdiff --git a/Makefile b/Makefile[m
[1mindex 3107eb0..11bd049 100644[m
[1m--- a/Makefile[m
[1m+++ b/Makefile[m
[36m@@ -12,7 +12,7 @@[m [minstall:[m
 	npm link[m
 [m
 test:[m
[31m-	npx jest[m
[32m+[m	[32mnpm test[m
 [m
 test-coverage:[m
[31m-	npx jest --coverage[m
\ No newline at end of file[m
[32m+[m	[32mnpm test -- --coverage[m
\ No newline at end of file[m
[1mdiff --git a/coverage/clover.xml b/coverage/clover.xml[m
[1mindex 8b53e11..b6a7dc5 100644[m
[1m--- a/coverage/clover.xml[m
[1m+++ b/coverage/clover.xml[m
[36m@@ -1,24 +1,49 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
[31m-<coverage generated="1574851663716" clover="3.2.0">[m
[31m-  <project timestamp="1574851663716" name="All files">[m
[31m-    <metrics statements="26" coveredstatements="25" conditionals="12" coveredconditionals="10" methods="5" coveredmethods="5" elements="43" coveredelements="40" complexity="0" loc="26" ncloc="26" packages="1" files="2" classes="2"/>[m
[32m+[m[32m<coverage generated="1575449560528" clover="3.2.0">[m
[32m+[m[32m  <project timestamp="1575449560528" name="All files">[m
[32m+[m[32m    <metrics statements="51" coveredstatements="50" conditionals="22" coveredconditionals="20" methods="11" coveredmethods="11" elements="84" coveredelements="81" complexity="0" loc="51" ncloc="51" packages="1" files="2" classes="2"/>[m
     <file name="index.js" path="/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js">[m
[31m-      <metrics statements="15" coveredstatements="15" conditionals="6" coveredconditionals="5" methods="4" coveredmethods="4"/>[m
[31m-      <line num="4" count="1" type="stmt"/>[m
[31m-      <line num="5" count="3" type="stmt"/>[m
[31m-      <line num="6" count="9" type="stmt"/>[m
[31m-      <line num="10" count="1" type="stmt"/>[m
[31m-      <line num="11" count="3" type="stmt"/>[m
[31m-      <line num="13" count="3" type="stmt"/>[m
[31m-      <line num="15" count="3" type="stmt"/>[m
[31m-      <line num="17" count="3" type="stmt"/>[m
[31m-      <line num="18" count="12" type="cond" truecount="2" falsecount="0"/>[m
[31m-      <line num="19" count="9" type="cond" truecount="2" falsecount="0"/>[m
[31m-      <line num="20" count="6" type="stmt"/>[m
[31m-      <line num="22" count="3" type="stmt"/>[m
[31m-      <line num="24" count="3" type="stmt"/>[m
[31m-      <line num="27" count="3" type="stmt"/>[m
[31m-      <line num="29" count="3" type="cond" truecount="1" falsecount="1"/>[m
[32m+[m[32m      <metrics statements="40" coveredstatements="40" conditionals="16" coveredconditionals="15" methods="10" coveredmethods="10"/>[m
[32m+[m[32m      <line num="4" count="105" type="stmt"/>[m
[32m+[m[32m      <line num="6" count="1" type="stmt"/>[m
[32m+[m[32m      <line num="7" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="8" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="9" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="10" count="15" type="cond" truecount="1" falsecount="1"/>[m
[32m+[m[32m      <line num="12" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="14" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="17" count="1" type="stmt"/>[m
[32m+[m[32m      <line num="23" count="57" type="cond" truecount="2" falsecount="0"/>[m
[32m+[m[32m      <line num="25" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="26" count="54" type="cond" truecount="2" falsecount="0"/>[m
[32m+[m[32m      <line num="27" count="33" type="stmt"/>[m
[32m+[m[32m      <line num="29" count="21" type="cond" truecount="2" falsecount="0"/>[m
[32m+[m[32m      <line num="30" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="31" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="32" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="34" count="9" type="stmt"/>[m
[32m+[m[32m      <line num="35" count="9" type="stmt"/>[m
[32m+[m[32m      <line num="36" count="9" type="stmt"/>[m
[32m+[m[32m      <line num="41" count="1" type="stmt"/>[m
[32m+[m[32m      <line num="42" count="3" type="stmt"/>[m
[32m+[m[32m      <line num="44" count="3" type="stmt"/>[m
[32m+[m[32m      <line num="46" count="3" type="stmt"/>[m
[32m+[m[32m      <line num="47" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="48" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="49" count="39" type="cond" truecount="2" falsecount="0"/>[m
[32m+[m[32m      <line num="50" count="6" type="stmt"/>[m
[32m+[m[32m      <line num="55" count="33" type="stmt"/>[m
[32m+[m[32m      <line num="56" count="33" type="stmt"/>[m
[32m+[m[32m      <line num="58" count="33" type="cond" truecount="2" falsecount="0"/>[m
[32m+[m[32m      <line num="59" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="64" count="21" type="cond" truecount="4" falsecount="0"/>[m
[32m+[m[32m      <line num="65" count="9" type="stmt"/>[m
[32m+[m[32m      <line num="70" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="75" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="77" count="12" type="stmt"/>[m
[32m+[m[32m      <line num="79" count="15" type="stmt"/>[m
[32m+[m[32m      <line num="82" count="3" type="stmt"/>[m
[32m+[m[32m      <line num="83" count="3" type="stmt"/>[m
     </file>[m
     <file name="parser.js" path="/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/parser.js">[m
       <metrics statements="11" coveredstatements="10" conditionals="6" coveredconditionals="5" methods="1" coveredmethods="1"/>[m
[1mdiff --git a/coverage/coverage-final.json b/coverage/coverage-final.json[m
[1mindex 73c4b7b..398c656 100644[m
[1m--- a/coverage/coverage-final.json[m
[1m+++ b/coverage/coverage-final.json[m
[36m@@ -1,3 +1,3 @@[m
[31m-{"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js": {"path":"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js","statementMap":{"0":{"start":{"line":4,"column":23},"end":{"line":7,"column":1}},"1":{"start":{"line":5,"column":15},"end":{"line":5,"column":31}},"2":{"start":{"line":6,"column":2},"end":{"line":6,"column":72}},"3":{"start":{"line":6,"column":35},"end":{"line":6,"column":66}},"4":{"start":{"line":10,"column":13},"end":{"line":30,"column":1}},"5":{"start":{"line":11,"column":20},"end":{"line":11,"column":41}},"6":{"start":{"line":13,"column":19},"end":{"line":13,"column":41}},"7":{"start":{"line":15,"column":15},"end":{"line":15,"column":37}},"8":{"start":{"line":17,"column":18},"end":{"line":25,"column":9}},"9":{"start":{"line":18,"column":4},"end":{"line":23,"column":5}},"10":{"start":{"line":19,"column":6},"end":{"line":21,"column":7}},"11":{"start":{"line":20,"column":8},"end":{"line":20,"column":52}},"12":{"start":{"line":22,"column":6},"end":{"line":22,"column":79}},"13":{"start":{"line":24,"column":4},"end":{"line":24,"column":49}},"14":{"start":{"line":27,"column":24},"end":{"line":27,"column":46}},"15":{"start":{"line":29,"column":2},"end":{"line":29,"column":111}}},"fnMap":{"0":{"name":"(anonymous_0)","decl":{"start":{"line":4,"column":23},"end":{"line":4,"column":24}},"loc":{"start":{"line":4,"column":32},"end":{"line":7,"column":1}},"line":4},"1":{"name":"(anonymous_1)","decl":{"start":{"line":6,"column":21},"end":{"line":6,"column":22}},"loc":{"start":{"line":6,"column":35},"end":{"line":6,"column":66}},"line":6},"2":{"name":"(anonymous_2)","decl":{"start":{"line":10,"column":13},"end":{"line":10,"column":14}},"loc":{"start":{"line":10,"column":48},"end":{"line":30,"column":1}},"line":10},"3":{"name":"(anonymous_3)","decl":{"start":{"line":17,"column":30},"end":{"line":17,"column":31}},"loc":{"start":{"line":17,"column":44},"end":{"line":25,"column":3}},"line":17}},"branchMap":{"0":{"loc":{"start":{"line":18,"column":4},"end":{"line":23,"column":5}},"type":"if","locations":[{"start":{"line":18,"column":4},"end":{"line":23,"column":5}},{"start":{"line":18,"column":4},"end":{"line":23,"column":5}}],"line":18},"1":{"loc":{"start":{"line":19,"column":6},"end":{"line":21,"column":7}},"type":"if","locations":[{"start":{"line":19,"column":6},"end":{"line":21,"column":7}},{"start":{"line":19,"column":6},"end":{"line":21,"column":7}}],"line":19},"2":{"loc":{"start":{"line":29,"column":9},"end":{"line":29,"column":110}},"type":"cond-expr","locations":[{"start":{"line":29,"column":45},"end":{"line":29,"column":92}},{"start":{"line":29,"column":95},"end":{"line":29,"column":110}}],"line":29}},"s":{"0":1,"1":3,"2":3,"3":9,"4":1,"5":3,"6":3,"7":3,"8":3,"9":12,"10":9,"11":6,"12":3,"13":3,"14":3,"15":3},"f":{"0":3,"1":9,"2":3,"3":12},"b":{"0":[9,3],"1":[6,3],"2":[3,0]},"_coverageSchema":"43e27e138ebf9cfc5966b082cf9a028302ed4184","hash":"6e5ba50144524fe3f5fc1e17f60b816faa5bf190"}[m
[32m+[m[32m{"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js": {"path":"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js","statementMap":{"0":{"start":{"line":4,"column":19},"end":{"line":4,"column":66}},"1":{"start":{"line":4,"column":30},"end":{"line":4,"column":66}},"2":{"start":{"line":6,"column":18},"end":{"line":15,"column":1}},"3":{"start":{"line":7,"column":15},"end":{"line":7,"column":31}},"4":{"start":{"line":8,"column":17},"end":{"line":13,"column":8}},"5":{"start":{"line":9,"column":27},"end":{"line":9,"column":42}},"6":{"start":{"line":10,"column":18},"end":{"line":11,"column":21}},"7":{"start":{"line":12,"column":4},"end":{"line":12,"column":72}},"8":{"start":{"line":14,"column":2},"end":{"line":14,"column":53}},"9":{"start":{"line":17,"column":15},"end":{"line":21,"column":1}},"10":{"start":{"line":23,"column":24},"end":{"line":23,"column":104}},"11":{"start":{"line":23,"column":42},"end":{"line":23,"column":103}},"12":{"start":{"line":25,"column":18},"end":{"line":38,"column":7}},"13":{"start":{"line":25,"column":47},"end":{"line":38,"column":7}},"14":{"start":{"line":26,"column":2},"end":{"line":28,"column":3}},"15":{"start":{"line":27,"column":4},"end":{"line":27,"column":123}},"16":{"start":{"line":29,"column":2},"end":{"line":33,"column":3}},"17":{"start":{"line":30,"column":17},"end":{"line":30,"column":32}},"18":{"start":{"line":31,"column":17},"end":{"line":31,"column":32}},"19":{"start":{"line":32,"column":4},"end":{"line":32,"column":163}},"20":{"start":{"line":34,"column":14},"end":{"line":34,"column":29}},"21":{"start":{"line":35,"column":18},"end":{"line":35,"column":27}},"22":{"start":{"line":36,"column":2},"end":{"line":36,"column":120}},"23":{"start":{"line":41,"column":13},"end":{"line":84,"column":1}},"24":{"start":{"line":42,"column":20},"end":{"line":42,"column":41}},"25":{"start":{"line":44,"column":19},"end":{"line":44,"column":41}},"26":{"start":{"line":46,"column":22},"end":{"line":80,"column":3}},"27":{"start":{"line":47,"column":25},"end":{"line":47,"column":46}},"28":{"start":{"line":48,"column":21},"end":{"line":73,"column":11}},"29":{"start":{"line":49,"column":6},"end":{"line":53,"column":7}},"30":{"start":{"line":50,"column":8},"end":{"line":52,"column":11}},"31":{"start":{"line":55,"column":31},"end":{"line":55,"column":47}},"32":{"start":{"line":56,"column":32},"end":{"line":56,"column":49}},"33":{"start":{"line":58,"column":6},"end":{"line":62,"column":7}},"34":{"start":{"line":59,"column":8},"end":{"line":61,"column":11}},"35":{"start":{"line":64,"column":6},"end":{"line":68,"column":7}},"36":{"start":{"line":65,"column":8},"end":{"line":67,"column":11}},"37":{"start":{"line":70,"column":6},"end":{"line":72,"column":9}},"38":{"start":{"line":75,"column":22},"end":{"line":75,"column":53}},"39":{"start":{"line":77,"column":23},"end":{"line":77,"column":45}},"40":{"start":{"line":79,"column":4},"end":{"line":79,"column":131}},"41":{"start":{"line":79,"column":50},"end":{"line":79,"column":119}},"42":{"start":{"line":82,"column":14},"end":{"line":82,"column":50}},"43":{"start":{"line":83,"column":2},"end":{"line":83,"column":40}}},"fnMap":{"0":{"name":"(anonymous_0)","decl":{"start":{"line":4,"column":19},"end":{"line":4,"column":20}},"loc":{"start":{"line":4,"column":30},"end":{"line":4,"column":66}},"line":4},"1":{"name":"(anonymous_1)","decl":{"start":{"line":6,"column":18},"end":{"line":6,"column":19}},"loc":{"start":{"line":6,"column":48},"end":{"line":15,"column":1}},"line":6},"2":{"name":"(anonymous_2)","decl":{"start":{"line":8,"column":29},"end":{"line":8,"column":30}},"loc":{"start":{"line":8,"column":46},"end":{"line":13,"column":3}},"line":8},"3":{"name":"(anonymous_3)","decl":{"start":{"line":23,"column":24},"end":{"line":23,"column":25}},"loc":{"start":{"line":23,"column":42},"end":{"line":23,"column":103}},"line":23},"4":{"name":"(anonymous_4)","decl":{"start":{"line":25,"column":18},"end":{"line":25,"column":19}},"loc":{"start":{"line":25,"column":47},"end":{"line":38,"column":7}},"line":25},"5":{"name":"(anonymous_5)","decl":{"start":{"line":25,"column":63},"end":{"line":25,"column":64}},"loc":{"start":{"line":25,"column":83},"end":{"line":37,"column":1}},"line":25},"6":{"name":"(anonymous_6)","decl":{"start":{"line":41,"column":13},"end":{"line":41,"column":14}},"loc":{"start":{"line":41,"column":48},"end":{"line":84,"column":1}},"line":41},"7":{"name":"(anonymous_7)","decl":{"start":{"line":46,"column":22},"end":{"line":46,"column":23}},"loc":{"start":{"line":46,"column":52},"end":{"line":80,"column":3}},"line":46},"8":{"name":"(anonymous_8)","decl":{"start":{"line":48,"column":41},"end":{"line":48,"column":42}},"loc":{"start":{"line":48,"column":63},"end":{"line":73,"column":5}},"line":48},"9":{"name":"(anonymous_9)","decl":{"start":{"line":79,"column":29},"end":{"line":79,"column":30}},"loc":{"start":{"line":79,"column":50},"end":{"line":79,"column":119}},"line":79}},"branchMap":{"0":{"loc":{"start":{"line":10,"column":18},"end":{"line":11,"column":21}},"type":"cond-expr","locations":[{"start":{"line":10,"column":47},"end":{"line":10,"column":95}},{"start":{"line":11,"column":8},"end":{"line":11,"column":21}}],"line":10},"1":{"loc":{"start":{"line":23,"column":42},"end":{"line":23,"column":103}},"type":"cond-expr","locations":[{"start":{"line":23,"column":66},"end":{"line":23,"column":92}},{"start":{"line":23,"column":95},"end":{"line":23,"column":103}}],"line":23},"2":{"loc":{"start":{"line":26,"column":2},"end":{"line":28,"column":3}},"type":"if","locations":[{"start":{"line":26,"column":2},"end":{"line":28,"column":3}},{"start":{"line":26,"column":2},"end":{"line":28,"column":3}}],"line":26},"3":{"loc":{"start":{"line":29,"column":2},"end":{"line":33,"column":3}},"type":"if","locations":[{"start":{"line":29,"column":2},"end":{"line":33,"column":3}},{"start":{"line":29,"column":2},"end":{"line":33,"column":3}}],"line":29},"4":{"loc":{"start":{"line":49,"column":6},"end":{"line":53,"column":7}},"type":"if","locations":[{"start":{"line":49,"column":6},"end":{"line":53,"column":7}},{"start":{"line":49,"column":6},"end":{"line":53,"column":7}}],"line":49},"5":{"loc":{"start":{"line":58,"column":6},"end":{"line":62,"column":7}},"type":"if","locations":[{"start":{"line":58,"column":6},"end":{"line":62,"column":7}},{"start":{"line":58,"column":6},"end":{"line":62,"column":7}}],"line":58},"6":{"loc":{"start":{"line":64,"column":6},"end":{"line":68,"column":7}},"type":"if","locations":[{"start":{"line":64,"column":6},"end":{"line":68,"column":7}},{"start":{"line":64,"column":6},"end":{"line":68,"column":7}}],"line":64},"7":{"loc":{"start":{"line":64,"column":10},"end":{"line":64,"column":83}},"type":"binary-expr","locations":[{"start":{"line":64,"column":10},"end":{"line":64,"column":44}},{"start":{"line":64,"column":48},"end":{"line":64,"column":83}}],"line":64}},"s":{"0":1,"1":105,"2":1,"3":15,"4":15,"5":15,"6":15,"7":15,"8":15,"9":1,"10":1,"11":57,"12":1,"13":12,"14":54,"15":33,"16":21,"17":12,"18":12,"19":12,"20":9,"21":9,"22":9,"23":1,"24":3,"25":3,"26":3,"27":12,"28":12,"29":39,"30":6,"31":33,"32":33,"33":33,"34":12,"35":21,"36":9,"37":12,"38":12,"39":12,"40":12,"41":15,"42":3,"43":3},"f":{"0":105,"1":15,"2":15,"3":57,"4":12,"5":54,"6":3,"7":12,"8":39,"9":15},"b":{"0":[0,15],"1":[15,42],"2":[33,21],"3":[12,9],"4":[6,33],"5":[12,21],"6":[9,12],"7":[21,12]},"_coverageSchema":"43e27e138ebf9cfc5966b082cf9a028302ed4184","hash":"5f94451200116c52658eeed4808df7016c70af8a"}[m
 ,"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/parser.js": {"path":"/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/parser.js","statementMap":{"0":{"start":{"line":6,"column":15},"end":{"line":22,"column":1}},"1":{"start":{"line":7,"column":19},"end":{"line":7,"column":53}},"2":{"start":{"line":8,"column":20},"end":{"line":8,"column":42}},"3":{"start":{"line":10,"column":2},"end":{"line":10,"column":57}},"4":{"start":{"line":10,"column":29},"end":{"line":10,"column":57}},"5":{"start":{"line":12,"column":2},"end":{"line":15,"column":3}},"6":{"start":{"line":13,"column":26},"end":{"line":13,"column":52}},"7":{"start":{"line":14,"column":4},"end":{"line":14,"column":23}},"8":{"start":{"line":17,"column":2},"end":{"line":20,"column":3}},"9":{"start":{"line":18,"column":24},"end":{"line":18,"column":43}},"10":{"start":{"line":19,"column":4},"end":{"line":19,"column":23}},"11":{"start":{"line":21,"column":2},"end":{"line":21,"column":12}}},"fnMap":{"0":{"name":"(anonymous_0)","decl":{"start":{"line":6,"column":15},"end":{"line":6,"column":16}},"loc":{"start":{"line":6,"column":29},"end":{"line":22,"column":1}},"line":6}},"branchMap":{"0":{"loc":{"start":{"line":10,"column":2},"end":{"line":10,"column":57}},"type":"if","locations":[{"start":{"line":10,"column":2},"end":{"line":10,"column":57}},{"start":{"line":10,"column":2},"end":{"line":10,"column":57}}],"line":10},"1":{"loc":{"start":{"line":12,"column":2},"end":{"line":15,"column":3}},"type":"if","locations":[{"start":{"line":12,"column":2},"end":{"line":15,"column":3}},{"start":{"line":12,"column":2},"end":{"line":15,"column":3}}],"line":12},"2":{"loc":{"start":{"line":17,"column":2},"end":{"line":20,"column":3}},"type":"if","locations":[{"start":{"line":17,"column":2},"end":{"line":20,"column":3}},{"start":{"line":17,"column":2},"end":{"line":20,"column":3}}],"line":17}},"s":{"0":1,"1":6,"2":6,"3":6,"4":2,"5":4,"6":2,"7":2,"8":2,"9":2,"10":2,"11":0},"f":{"0":6},"b":{"0":[2,4],"1":[2,2],"2":[2,0]},"_coverageSchema":"43e27e138ebf9cfc5966b082cf9a028302ed4184","hash":"9b1e083f95fc0157b4cd95e15d8bc80f07943df1"}[m
 }[m
[1mdiff --git a/coverage/lcov-report/index.html b/coverage/lcov-report/index.html[m
[1mindex f99e669..d571cef 100644[m
[1m--- a/coverage/lcov-report/index.html[m
[1m+++ b/coverage/lcov-report/index.html[m
[36m@@ -20,24 +20,24 @@[m
     </h1>[m
     <div class='clearfix'>[m
       <div class='fl pad1y space-right2'>[m
[31m-        <span class="strong">96.43% </span>[m
[32m+[m[32m        <span class="strong">98.21% </span>[m
         <span class="quiet">Statements</span>[m
[31m-        <span class='fraction'>27/28</span>[m
[32m+[m[32m        <span class='fraction'>55/56</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
[31m-        <span class="strong">83.33% </span>[m
[32m+[m[32m        <span class="strong">90.91% </span>[m
         <span class="quiet">Branches</span>[m
[31m-        <span class='fraction'>10/12</span>[m
[32m+[m[32m        <span class='fraction'>20/22</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
         <span class="strong">100% </span>[m
         <span class="quiet">Functions</span>[m
[31m-        <span class='fraction'>5/5</span>[m
[32m+[m[32m        <span class='fraction'>11/11</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
[31m-        <span class="strong">96.15% </span>[m
[32m+[m[32m        <span class="strong">98.04% </span>[m
         <span class="quiet">Lines</span>[m
[31m-        <span class='fraction'>25/26</span>[m
[32m+[m[32m        <span class='fraction'>50/51</span>[m
       </div>[m
     </div>[m
     <p class="quiet">[m
[36m@@ -65,13 +65,13 @@[m
 	<td class="file high" data-value="index.js"><a href="index.js.html">index.js</a></td>[m
 	<td data-value="100" class="pic high"><div class="chart"><div class="cover-fill cover-full" style="width: 100%;"></div><div class="cover-empty" style="width:0%;"></div></div></td>[m
 	<td data-value="100" class="pct high">100%</td>[m
[31m-	<td data-value="16" class="abs high">16/16</td>[m
[31m-	<td data-value="83.33" class="pct high">83.33%</td>[m
[31m-	<td data-value="6" class="abs high">5/6</td>[m
[32m+[m	[32m<td data-value="44" class="abs high">44/44</td>[m
[32m+[m	[32m<td data-value="93.75" class="pct high">93.75%</td>[m
[32m+[m	[32m<td data-value="16" class="abs high">15/16</td>[m
 	<td data-value="100" class="pct high">100%</td>[m
[31m-	<td data-value="4" class="abs high">4/4</td>[m
[32m+[m	[32m<td data-value="10" class="abs high">10/10</td>[m
 	<td data-value="100" class="pct high">100%</td>[m
[31m-	<td data-value="15" class="abs high">15/15</td>[m
[32m+[m	[32m<td data-value="40" class="abs high">40/40</td>[m
 	</tr>[m
 [m
 <tr>[m
[36m@@ -93,7 +93,7 @@[m
 </div><!-- /wrapper -->[m
 <div class='footer quiet pad2 space-top1 center small'>[m
   Code coverage[m
[31m-  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Nov 27 2019 13:47:43 GMT+0300 (Moscow Standard Time)[m
[32m+[m[32m  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Dec 04 2019 11:52:40 GMT+0300 (Moscow Standard Time)[m
 </div>[m
 </div>[m
 <script src="prettify.js"></script>[m
[1mdiff --git a/coverage/lcov-report/index.js.html b/coverage/lcov-report/index.js.html[m
[1mindex 4607bcd..ffc33d7 100644[m
[1m--- a/coverage/lcov-report/index.js.html[m
[1m+++ b/coverage/lcov-report/index.js.html[m
[36m@@ -22,22 +22,22 @@[m
       <div class='fl pad1y space-right2'>[m
         <span class="strong">100% </span>[m
         <span class="quiet">Statements</span>[m
[31m-        <span class='fraction'>16/16</span>[m
[32m+[m[32m        <span class='fraction'>44/44</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
[31m-        <span class="strong">83.33% </span>[m
[32m+[m[32m        <span class="strong">93.75% </span>[m
         <span class="quiet">Branches</span>[m
[31m-        <span class='fraction'>5/6</span>[m
[32m+[m[32m        <span class='fraction'>15/16</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
         <span class="strong">100% </span>[m
         <span class="quiet">Functions</span>[m
[31m-        <span class='fraction'>4/4</span>[m
[32m+[m[32m        <span class='fraction'>10/10</span>[m
       </div>[m
       <div class='fl pad1y space-right2'>[m
         <span class="strong">100% </span>[m
         <span class="quiet">Lines</span>[m
[31m-        <span class='fraction'>15/15</span>[m
[32m+[m[32m        <span class='fraction'>40/40</span>[m
       </div>[m
     </div>[m
     <p class="quiet">[m
[36m@@ -77,67 +77,235 @@[m
 <a name='L29'></a><a href='#L29'>29</a>[m
 <a name='L30'></a><a href='#L30'>30</a>[m
 <a name='L31'></a><a href='#L31'>31</a>[m
[31m-<a name='L32'></a><a href='#L32'>32</a></td><td class="line-coverage quiet"><span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<a name='L32'></a><a href='#L32'>32</a>[m
[32m+[m[32m<a name='L33'></a><a href='#L33'>33</a>[m
[32m+[m[32m<a name='L34'></a><a href='#L34'>34</a>[m
[32m+[m[32m<a name='L35'></a><a href='#L35'>35</a>[m
[32m+[m[32m<a name='L36'></a><a href='#L36'>36</a>[m
[32m+[m[32m<a name='L37'></a><a href='#L37'>37</a>[m
[32m+[m[32m<a name='L38'></a><a href='#L38'>38</a>[m
[32m+[m[32m<a name='L39'></a><a href='#L39'>39</a>[m
[32m+[m[32m<a name='L40'></a><a href='#L40'>40</a>[m
[32m+[m[32m<a name='L41'></a><a href='#L41'>41</a>[m
[32m+[m[32m<a name='L42'></a><a href='#L42'>42</a>[m
[32m+[m[32m<a name='L43'></a><a href='#L43'>43</a>[m
[32m+[m[32m<a name='L44'></a><a href='#L44'>44</a>[m
[32m+[m[32m<a name='L45'></a><a href='#L45'>45</a>[m
[32m+[m[32m<a name='L46'></a><a href='#L46'>46</a>[m
[32m+[m[32m<a name='L47'></a><a href='#L47'>47</a>[m
[32m+[m[32m<a name='L48'></a><a href='#L48'>48</a>[m
[32m+[m[32m<a name='L49'></a><a href='#L49'>49</a>[m
[32m+[m[32m<a name='L50'></a><a href='#L50'>50</a>[m
[32m+[m[32m<a name='L51'></a><a href='#L51'>51</a>[m
[32m+[m[32m<a name='L52'></a><a href='#L52'>52</a>[m
[32m+[m[32m<a name='L53'></a><a href='#L53'>53</a>[m
[32m+[m[32m<a name='L54'></a><a href='#L54'>54</a>[m
[32m+[m[32m<a name='L55'></a><a href='#L55'>55</a>[m
[32m+[m[32m<a name='L56'></a><a href='#L56'>56</a>[m
[32m+[m[32m<a name='L57'></a><a href='#L57'>57</a>[m
[32m+[m[32m<a name='L58'></a><a href='#L58'>58</a>[m
[32m+[m[32m<a name='L59'></a><a href='#L59'>59</a>[m
[32m+[m[32m<a name='L60'></a><a href='#L60'>60</a>[m
[32m+[m[32m<a name='L61'></a><a href='#L61'>61</a>[m
[32m+[m[32m<a name='L62'></a><a href='#L62'>62</a>[m
[32m+[m[32m<a name='L63'></a><a href='#L63'>63</a>[m
[32m+[m[32m<a name='L64'></a><a href='#L64'>64</a>[m
[32m+[m[32m<a name='L65'></a><a href='#L65'>65</a>[m
[32m+[m[32m<a name='L66'></a><a href='#L66'>66</a>[m
[32m+[m[32m<a name='L67'></a><a href='#L67'>67</a>[m
[32m+[m[32m<a name='L68'></a><a href='#L68'>68</a>[m
[32m+[m[32m<a name='L69'></a><a href='#L69'>69</a>[m
[32m+[m[32m<a name='L70'></a><a href='#L70'>70</a>[m
[32m+[m[32m<a name='L71'></a><a href='#L71'>71</a>[m
[32m+[m[32m<a name='L72'></a><a href='#L72'>72</a>[m
[32m+[m[32m<a name='L73'></a><a href='#L73'>73</a>[m
[32m+[m[32m<a name='L74'></a><a href='#L74'>74</a>[m
[32m+[m[32m<a name='L75'></a><a href='#L75'>75</a>[m
[32m+[m[32m<a name='L76'></a><a href='#L76'>76</a>[m
[32m+[m[32m<a name='L77'></a><a href='#L77'>77</a>[m
[32m+[m[32m<a name='L78'></a><a href='#L78'>78</a>[m
[32m+[m[32m<a name='L79'></a><a href='#L79'>79</a>[m
[32m+[m[32m<a name='L80'></a><a href='#L80'>80</a>[m
[32m+[m[32m<a name='L81'></a><a href='#L81'>81</a>[m
[32m+[m[32m<a name='L82'></a><a href='#L82'>82</a>[m
[32m+[m[32m<a name='L83'></a><a href='#L83'>83</a>[m
[32m+[m[32m<a name='L84'></a><a href='#L84'>84</a>[m
[32m+[m[32m<a name='L85'></a><a href='#L85'>85</a>[m
[32m+[m[32m<a name='L86'></a><a href='#L86'>86</a>[m
[32m+[m[32m<a name='L87'></a><a href='#L87'>87</a>[m
[32m+[m[32m<a name='L88'></a><a href='#L88'>88</a></td><td class="line-coverage quiet"><span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">105x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-yes">1x</span>[m
[31m-<span class="cline-any cline-yes">3x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">1x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">57x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">54x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">33x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">21x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">9x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">9x</span>[m
 <span class="cline-any cline-yes">9x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-yes">1x</span>[m
 <span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-yes">3x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">39x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">6x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[31m-<span class="cline-any cline-yes">3x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">33x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">33x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">33x</span>[m
 <span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">21x</span>[m
 <span class="cline-any cline-yes">9x</span>[m
[31m-<span class="cline-any cline-yes">6x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[31m-<span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[31m-<span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[31m-<span class="cline-any cline-yes">3x</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">12x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">15x</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-yes">3x</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
[32m+[m[32m<span class="cline-any cline-neutral">&nbsp;</span>[m
 <span class="cline-any cline-neutral">&nbsp;</span></td><td class="text"><pre class="prettyprint lang-js">import _ from 'lodash';[m
 import parser from './parser';[m
 &nbsp;[m
[31m-const objToConfigStr = (obj) =&gt; {[m
[32m+[m[32mconst makeIndent = (level) =&gt; `${' '.repeat(2 * (2 * level + 1))}`;[m
[32m+[m[32m&nbsp;[m
[32m+[m[32mconst stringify = (obj, indentLevel, accStr) =&gt; {[m
   const keys = Object.keys(obj);[m
[31m-  return keys.reduce((acc, key) =&gt; `${acc}\n+ ${key}: ${obj[key]}`, '');[m
[32m+[m[32m  const result = keys.reduce((keyAcc, key) =&gt; {[m
[32m+[m[32m    const newIndentLevel = indentLevel + 1;[m
[32m+[m[32m    const value = obj[key] instanceof Object ? <span class="branch-0 cbranch-no" title="branch not covered" >`${stringify(obj[key], newIndentLevel, accStr)}`</span>[m
[32m+[m[32m      : `${obj[key]}`;[m
[32m+[m[32m    return `${keyAcc}\n  ${makeIndent(newIndentLevel)}${key}: ${value}`;[m
[32m+[m[32m  }, '');[m
[32m+[m[32m  return `{${result}\n  ${makeIndent(indentLevel)}}`;[m
[32m+[m[32m};[m
[32m+[m[32m&nbsp;[m
[32m+[m[32mconst states = {[m
[32m+[m[32m  deleted: '-',[m
[32m+[m[32m  unchanged: ' ',[m
[32m+[m[32m  added: '+',[m
 };[m
 &nbsp;[m
[32m+[m[32mconst getItemForPrint = (obj, indent) =&gt; (obj instanceof Object ? stringify(obj, indent, '') : `${obj}`);[m
[32m+[m[32m&nbsp;[m
[32m+[m[32mconst astRender = (diffTree, level, strAcc) =&gt; diffTree.reduce((accKey, curObj) =&gt; {[m
[32m+[m[32m  if (_.has(states, curObj.state)) {[m
[32m+[m[32m    return `${accKey}\n${makeIndent(level)}${states[curObj.state]} ${curObj.key}: ${getItemForPrint(curObj.value, level)}`;[m
[32m+[m[32m  }[m
[32m+[m[32m  if (curObj.children.length &lt; 1) {[m
[32m+[m[32m    const obj1 = curObj.value[0];[m
[32m+[m[32m    const obj2 = curObj.value[1];[m
[32m+[m[32m    return `${accKey}\n${makeIndent(level)}- ${curObj.key}: ${getItemForPrint(obj1, level)}\n${makeIndent(level)}+ ${curObj.key}: ${getItemForPrint(obj2, level)}`;[m
[32m+[m[32m  }[m
[32m+[m[32m  const arg = curObj.children;[m
[32m+[m[32m  const levelup = level + 1;[m
[32m+[m[32m  return `${accKey}\n${makeIndent(level)}  ${curObj.key}: {${astRender(arg, levelup, strAcc)}\n  ${makeIndent(level)}}`;[m
[32m+[m[32m},[m
[32m+[m[32mstrAcc);[m
[32m+[m[32m&nbsp;[m
 &nbsp;[m
 const diff = (firstFilePath, secondFilePath) =&gt; {[m
   const objBefore = parser(firstFilePath);[m
 &nbsp;[m
   const objAfter = parser(secondFilePath);[m
 &nbsp;[m
[31m-  const keys = Object.keys(objBefore);[m
[32m+[m[32m  const makeDiffAST = (firstObj, secondObj, acc) =&gt; {[m
[32m+[m[32m    const firstObjKeys = Object.keys(firstObj);[m
[32m+[m[32m    const mainDiff = firstObjKeys.reduce((firstAcc, curKey) =&gt; {[m
[32m+[m[32m      if (!_.has(secondObj, curKey)) {[m
[32m+[m[32m        return [...firstAcc, {[m
[32m+[m[32m          key: curKey, state: 'deleted', value: firstObj[curKey], children: [],[m
[32m+[m[32m        }];[m
[32m+[m[32m      }[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m      const curKeyValueFirst = firstObj[curKey];[m
[32m+[m[32m      const curKeyValueSecond = secondObj[curKey];[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m      if (_.isEqual(curKeyValueFirst, curKeyValueSecond)) {[m
[32m+[m[32m        return [...firstAcc, {[m
[32m+[m[32m          key: curKey, state: 'unchanged', value: firstObj[curKey], children: [],[m
[32m+[m[32m        }];[m
[32m+[m[32m      }[m
 &nbsp;[m
[31m-  const initStr = keys.reduce((acc, key) =&gt; {[m
[31m-    if (_.has(objAfter, key)) {[m
[31m-      if (objBefore[key] === objAfter[key]) {[m
[31m-        return `${acc}\n  ${key}: ${objAfter[key]}`;[m
[32m+[m[32m      if (curKeyValueFirst instanceof Object &amp;&amp; curKeyValueSecond instanceof Object) {[m
[32m+[m[32m        return [...firstAcc, {[m
[32m+[m[32m          key: curKey, state: 'changed', value: {}, children: makeDiffAST(curKeyValueFirst, curKeyValueSecond, []),[m
[32m+[m[32m        }];[m
       }[m
[31m-      return `${acc}\n+ ${key}: ${objAfter[key]}\n- ${key}: ${objBefore[key]}`;[m
[31m-    }[m
[31m-    return `${acc}\n- ${key}: ${objBefore[key]}`;[m
[31m-  }, '{');[m
 &nbsp;[m
[31m-  const ommitedObject = _.omit(objAfter, keys);[m
[32m+[m[32m      return [...firstAcc, {[m
[32m+[m[32m        key: curKey, state: 'changed', value: [firstObj[curKey], secondObj[curKey]], children: [],[m
[32m+[m[32m      }];[m
[32m+[m[32m    }, acc);[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m    const omitedObj = _.omit(secondObj, firstObjKeys);[m
 &nbsp;[m
[31m-  return Object.keys(ommitedObject).length ? `${initStr}${objToConfigStr(ommitedObject)}\n}` : <span class="branch-1 cbranch-no" title="branch not covered" >`${initStr}\n}`;</span>[m
[32m+[m[32m    const omitedKeys = Object.keys(omitedObj);[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m    return omitedKeys.reduce((omitedAcc, item) =&gt; [...omitedAcc, { key: item, state: 'added', value: omitedObj[item] }], mainDiff);[m
[32m+[m[32m  };[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m  const ast = makeDiffAST(objBefore, objAfter, []);[m
[32m+[m[32m  return `{${astRender(ast, 0, '')}\n}`;[m
 };[m
[32m+[m[32m&nbsp;[m
[32m+[m[32m&nbsp;[m
 export default diff;[m
 &nbsp;</pre></td></tr>[m
 </table></pre>[m
[36m@@ -145,7 +313,7 @@[m [mexport default diff;[m
 </div><!-- /wrapper -->[m
 <div class='footer quiet pad2 space-top1 center small'>[m
   Code coverage[m
[31m-  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Nov 27 2019 13:47:43 GMT+0300 (Moscow Standard Time)[m
[32m+[m[32m  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Dec 04 2019 11:52:40 GMT+0300 (Moscow Standard Time)[m
 </div>[m
 </div>[m
 <script src="prettify.js"></script>[m
[1mdiff --git a/coverage/lcov-report/parser.js.html b/coverage/lcov-report/parser.js.html[m
[1mindex d87f835..1a22870 100644[m
[1m--- a/coverage/lcov-report/parser.js.html[m
[1m+++ b/coverage/lcov-report/parser.js.html[m
[36m@@ -124,7 +124,7 @@[m [mexport default parser;[m
 </div><!-- /wrapper -->[m
 <div class='footer quiet pad2 space-top1 center small'>[m
   Code coverage[m
[31m-  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Nov 27 2019 13:47:43 GMT+0300 (Moscow Standard Time)[m
[32m+[m[32m  generated by <a href="https://istanbul.js.org/" target="_blank">istanbul</a> at Wed Dec 04 2019 11:52:40 GMT+0300 (Moscow Standard Time)[m
 </div>[m
 </div>[m
 <script src="prettify.js"></script>[m
[1mdiff --git a/coverage/lcov.info b/coverage/lcov.info[m
[1mindex 2084427..583a65e 100644[m
[1m--- a/coverage/lcov.info[m
[1m+++ b/coverage/lcov.info[m
[36m@@ -2,39 +2,86 @@[m [mTN:[m
 SF:/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/index.js[m
 FN:4,(anonymous_0)[m
 FN:6,(anonymous_1)[m
[31m-FN:10,(anonymous_2)[m
[31m-FN:17,(anonymous_3)[m
[31m-FNF:4[m
[31m-FNH:4[m
[31m-FNDA:3,(anonymous_0)[m
[31m-FNDA:9,(anonymous_1)[m
[31m-FNDA:3,(anonymous_2)[m
[31m-FNDA:12,(anonymous_3)[m
[31m-DA:4,1[m
[31m-DA:5,3[m
[31m-DA:6,9[m
[31m-DA:10,1[m
[31m-DA:11,3[m
[31m-DA:13,3[m
[31m-DA:15,3[m
[31m-DA:17,3[m
[31m-DA:18,12[m
[31m-DA:19,9[m
[31m-DA:20,6[m
[31m-DA:22,3[m
[31m-DA:24,3[m
[31m-DA:27,3[m
[31m-DA:29,3[m
[31m-LF:15[m
[31m-LH:15[m
[31m-BRDA:18,0,0,9[m
[31m-BRDA:18,0,1,3[m
[31m-BRDA:19,1,0,6[m
[31m-BRDA:19,1,1,3[m
[31m-BRDA:29,2,0,3[m
[31m-BRDA:29,2,1,0[m
[31m-BRF:6[m
[31m-BRH:5[m
[32m+[m[32mFN:8,(anonymous_2)[m
[32m+[m[32mFN:23,(anonymous_3)[m
[32m+[m[32mFN:25,(anonymous_4)[m
[32m+[m[32mFN:25,(anonymous_5)[m
[32m+[m[32mFN:41,(anonymous_6)[m
[32m+[m[32mFN:46,(anonymous_7)[m
[32m+[m[32mFN:48,(anonymous_8)[m
[32m+[m[32mFN:79,(anonymous_9)[m
[32m+[m[32mFNF:10[m
[32m+[m[32mFNH:10[m
[32m+[m[32mFNDA:105,(anonymous_0)[m
[32m+[m[32mFNDA:15,(anonymous_1)[m
[32m+[m[32mFNDA:15,(anonymous_2)[m
[32m+[m[32mFNDA:57,(anonymous_3)[m
[32m+[m[32mFNDA:12,(anonymous_4)[m
[32m+[m[32mFNDA:54,(anonymous_5)[m
[32m+[m[32mFNDA:3,(anonymous_6)[m
[32m+[m[32mFNDA:12,(anonymous_7)[m
[32m+[m[32mFNDA:39,(anonymous_8)[m
[32m+[m[32mFNDA:15,(anonymous_9)[m
[32m+[m[32mDA:4,105[m
[32m+[m[32mDA:6,1[m
[32m+[m[32mDA:7,15[m
[32m+[m[32mDA:8,15[m
[32m+[m[32mDA:9,15[m
[32m+[m[32mDA:10,15[m
[32m+[m[32mDA:12,15[m
[32m+[m[32mDA:14,15[m
[32m+[m[32mDA:17,1[m
[32m+[m[32mDA:23,57[m
[32m+[m[32mDA:25,12[m
[32m+[m[32mDA:26,54[m
[32m+[m[32mDA:27,33[m
[32m+[m[32mDA:29,21[m
[32m+[m[32mDA:30,12[m
[32m+[m[32mDA:31,12[m
[32m+[m[32mDA:32,12[m
[32m+[m[32mDA:34,9[m
[32m+[m[32mDA:35,9[m
[32m+[m[32mDA:36,9[m
[32m+[m[32mDA:41,1[m
[32m+[m[32mDA:42,3[m
[32m+[m[32mDA:44,3[m
[32m+[m[32mDA:46,3[m
[32m+[m[32mDA:47,12[m
[32m+[m[32mDA:48,12[m
[32m+[m[32mDA:49,39[m
[32m+[m[32mDA:50,6[m
[32m+[m[32mDA:55,33[m
[32m+[m[32mDA:56,33[m
[32m+[m[32mDA:58,33[m
[32m+[m[32mDA:59,12[m
[32m+[m[32mDA:64,21[m
[32m+[m[32mDA:65,9[m
[32m+[m[32mDA:70,12[m
[32m+[m[32mDA:75,12[m
[32m+[m[32mDA:77,12[m
[32m+[m[32mDA:79,15[m
[32m+[m[32mDA:82,3[m
[32m+[m[32mDA:83,3[m
[32m+[m[32mLF:40[m
[32m+[m[32mLH:40[m
[32m+[m[32mBRDA:10,0,0,0[m
[32m+[m[32mBRDA:10,0,1,15[m
[32m+[m[32mBRDA:23,1,0,15[m
[32m+[m[32mBRDA:23,1,1,42[m
[32m+[m[32mBRDA:26,2,0,33[m
[32m+[m[32mBRDA:26,2,1,21[m
[32m+[m[32mBRDA:29,3,0,12[m
[32m+[m[32mBRDA:29,3,1,9[m
[32m+[m[32mBRDA:49,4,0,6[m
[32m+[m[32mBRDA:49,4,1,33[m
[32m+[m[32mBRDA:58,5,0,12[m
[32m+[m[32mBRDA:58,5,1,21[m
[32m+[m[32mBRDA:64,6,0,9[m
[32m+[m[32mBRDA:64,6,1,12[m
[32m+[m[32mBRDA:64,7,0,21[m
[32m+[m[32mBRDA:64,7,1,12[m
[32m+[m[32mBRF:16[m
[32m+[m[32mBRH:15[m
 end_of_record[m
 TN:[m
 SF:/home/andrew/hexletpro/gendiffUtil/project-lvl2-s475/src/parser.js[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 22e3068..3ccbfd3 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -5,7 +5,7 @@[m
   "main": "dist/index.js",[m
   "bin": "dist/bin/gendiff.js",[m
   "scripts": {[m
[31m-    "test": "echo \"Error: no test specified\" && exit 1",[m
[32m+[m[32m    "test": "jest",[m
     "build": "NODE_ENV=production babel src --out-dir dist --source-maps inline",[m
     "prepublishOnly": "npm run build"[m
   },[m
