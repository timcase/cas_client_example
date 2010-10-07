animatedcollapse.addDiv('sec1', 'fade=1')
animatedcollapse.addDiv('sec2', 'fade=1')
animatedcollapse.addDiv('sec3', 'fade=1')
animatedcollapse.addDiv('sec4', 'fade=1')
animatedcollapse.addDiv('sec5', 'fade=1')
animatedcollapse.addDiv('sec6', 'fade=1')
animatedcollapse.addDiv('sec7', 'fade=1')
animatedcollapse.addDiv('sec8', 'fade=1')
animatedcollapse.addDiv('sec9', 'fade=1')
animatedcollapse.addDiv('sec10', 'fade=1')
animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted
	//$: Access to jQuery
	//divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
	//state: "block" or "none", depending on state
}

animatedcollapse.init()
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}