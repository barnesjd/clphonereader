window.CLPhoneReader = class CLPhoneReader
    replace: (ad) ->
    	for text, num of lookup
      	    ad = ad.replace new RegExp(text, "gi"), num
      	format(cleanup ad)

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
'eleven' : 11,
'twelve' : 12,
'thirteen' : 13,
'fourteen' : 14,
'fifteen' : 15,
'sixteen' : 16,
'seventeen' : 17,
'eighteen' : 18,
'nineteen' : 19,
'zero' : 0,
'one' : 1,
'two' : 2,
'three' : 3,
'four' : 4,
'five' : 5,
'six' : 6,
'seven' : 7,
'eight' : 8,
'nine' : 9,
'oh' : 0

delims = /\d(?:\s|[-])+\d/g

cleanup = (ad) ->
    clean = ad.replace delims, (m) -> 
        m.substring(0,1) + m.substring(m.length-1,m.length)
    return ad unless clean != ad
    return cleanup(clean)
    
format = (ad) ->
	ad.replace /\d{10}/, (n) ->
		"("+n.substring(0,3)+")"+n.substring(3,6)+"-"+n.substring(6)
