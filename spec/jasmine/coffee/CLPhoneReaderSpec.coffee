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
    	expect(result).toBe "This is my number (256)555-4567"
    	
    it 'will be case insensitive', ->
    	obj = new CLPhoneReader
    	ad = "Call Don Two56-508-SixSix94"
    	result = obj.replace ad
    	expect(result).toBe "Call Don (256)508-6694"
    	
    it 'will handle multiple delimiters between digits', ->
    	obj = new CLPhoneReader
    	ad = "Call Don Two56 - 508 - Six Six94"
    	result = obj.replace ad
    	expect(result).toBe "Call Don (256)508-6694"
    	
    it 'will handle teens', ->
    	obj = new CLPhoneReader
    	ad = "Email , Call or Text >>>>>> 256-701-Eighteen 3 Three"
    	result = obj.replace ad
    	expect(result).toBe "Email , Call or Text >>>>>> (256)701-1833"
    	
    it 'will handle thirty something without a dash', ->
        obj = new CLPhoneReader
        ad = "Email , Call or Text >>>>>> 256-701-Eighteen Thirty Three"
        result = obj.replace ad
        expect(result).toBe "Email , Call or Text >>>>>> (256)701-1833"