window.CLPhoneReader = class CLPhoneReader
    replace: (ad) ->
    	for text, num of lookup
      	    ad = ad.replace new RegExp(text, "g"), num
      	ad.replace /\d\s+\d/g, (w) ->
      		w.replace /\s+/g, ""
      		
    isNum: (text) ->
    	anynum.test text
    		    	
lookup = '0' : 0,
'1' : 1,
'2' : 2,
'3' : 3,
'4' : 4,
'5' : 5,
'6' : 6,
'7' : 7,
'8' : 8,
'9' : 9,
'zero' : 0,
'one' : 1,
'two' : 2,
'three' : 3,
'four' : 4,
'five' : 5,
'six' : 6,
'seven' : 7,
'eight' : 8,
'nine' : 9 

anynum = ""
for text, num of lookup
    anynum += text + "|" 
anynum = new RegExp(anynum.substring(0, anynum.length - 1))