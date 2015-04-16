package com.imperial.icbanner.domains

class JhDept {
	long id // must have an id column as PK (sql server origin!)
    long jhdept_id
	long deptno
	String dname
	String loc
	
	static mapping = {
		table 'JHDEPT' // optional if you want different domain class name to table name
		version false // false would switch off automatic locking - if true need a version column in dbase
		id generator: 'native', params:[sequence:'JHDEPT_S'] // must specify a sequence for Id
		// jhdept_id defaultValue: "generator: native', params:[sequence:'JHDEPT_JHDEPT_ID_S']"  // -- this doesnt work

			//autoImport false
		
	}
	
		static constraints = {
			dname size: 1..50, blank: false, unique: true
			loc  size: 1..30, blank: false
			// jhdept_id generator: 'native', params:[sequence:'JHDEPT_JHDEPT_ID_S'] // -- this doesnt work
		}
		
	}
