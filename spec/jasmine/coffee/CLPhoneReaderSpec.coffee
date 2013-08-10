describe 'CLPhoneReader', ->

    it 'will not change the input when there are no phone numbers', ->
        obj = new CLPhoneReader
        ad = "This has no numbers"
        result = obj.replace ad
        expect(result).toBe ad
    
    it 'will change individual english numbers to digits', ->
    	obj = new CLPhoneReader
    	ad = "This is my number two five six 555-45 six seven"
    	result = obj.replace ad
    	expect(result).toBe "This is my number 256555-4567"
    	
    it 'will find numbers', ->
    	obj = new CLPhoneReader
    	expect(obj.isNum "1").toBe true
    	expect(obj.isNum "one").toBe true
    	expect(obj.isNum "not").toBe false