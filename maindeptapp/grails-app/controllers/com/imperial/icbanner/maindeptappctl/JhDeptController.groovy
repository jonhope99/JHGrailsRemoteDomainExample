package com.imperial.icbanner.maindeptappctl



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.imperial.icbanner.domains.JhDept
import com.imperial.icbanner.domains.services.*

@Transactional(readOnly = true)
class JhDeptController {
	
	def JhDeptService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond JhDept.list(params), model:[jhDeptInstanceCount: JhDept.count()]
    }

    def show(JhDept jhDeptInstance) {
        respond jhDeptInstance
    }

    // standard create
	//def create() {
    //    respond new JhDept(params)
    //}
	// JH create using remote service
	def create() {
		respond JhDeptService.InitJhDept()
	}

    @Transactional
    def save(JhDept jhDeptInstance) {
        if (jhDeptInstance == null) {
            notFound()
            return
        }

        if (jhDeptInstance.hasErrors()) {
            respond jhDeptInstance.errors, view:'create'
            return
        }

        jhDeptInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jhDept.label', default: 'JhDept'), jhDeptInstance.id])
                redirect jhDeptInstance
            }
            '*' { respond jhDeptInstance, [status: CREATED] }
        }
    }

    def edit(JhDept jhDeptInstance) {
        respond jhDeptInstance
    }

    @Transactional
    def update(JhDept jhDeptInstance) {
        if (jhDeptInstance == null) {
            notFound()
            return
        }

        if (jhDeptInstance.hasErrors()) {
            respond jhDeptInstance.errors, view:'edit'
            return
        }

        jhDeptInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'JhDept.label', default: 'JhDept'), jhDeptInstance.id])
                redirect jhDeptInstance
            }
            '*'{ respond jhDeptInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(JhDept jhDeptInstance) {

        if (jhDeptInstance == null) {
            notFound()
            return
        }

        jhDeptInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'JhDept.label', default: 'JhDept'), jhDeptInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jhDept.label', default: 'JhDept'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
