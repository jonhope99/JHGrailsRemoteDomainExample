package com.imperial.icbanner.domains.services

import grails.transaction.Transactional
//JH
import javax.sql.DataSource
import groovy.sql.Sql
import com.imperial.icbanner.domains.JhDept
// JH end

@Transactional
class JhDeptService { // need standard template for services
	
	def dataSource // inject dataSource
	def JhDept     // inject
	
	def InitJhDept() {
		//
					def sql = new Sql(dataSource)
					def nextseqval
					
					def res1 = sql.firstRow("SELECT JHDEPT_ID_S.nextval as next_value from sys.dual")
					def res2 = sql.firstRow("SELECT JHDEPT_JHDEPTNO_S.nextval as next_value from sys.dual")
					//log.info "Single row output: " + res[0] // or res.next_value -- note that logging needs config.groovy changes - see project jhdept
			 
					sql.close()
					//return nextseqval+100000
					return new JhDept(jhdept_id: res1.next_value, deptno: res2.next_value) // res1[0] or res1.next_value
				}
//

}