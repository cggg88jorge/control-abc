package com.controlAbc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IncidenceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Incidence.list(params), model:[incidenceInstanceCount: Incidence.count()]
    }

    def show(Incidence incidenceInstance) {
        respond incidenceInstance
    }

    def create() {
        respond new Incidence(params)
    }

    @Transactional
    def save(Incidence incidenceInstance) {
        if (incidenceInstance == null) {
            notFound()
            return
        }

        if (incidenceInstance.hasErrors()) {
            respond incidenceInstance.errors, view:'create'
            return
        }

        incidenceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'incidence.label', default: 'Incidence'), incidenceInstance.id])
                redirect incidenceInstance
            }
            '*' { respond incidenceInstance, [status: CREATED] }
        }
    }

    def edit(Incidence incidenceInstance) {
        respond incidenceInstance
    }

    @Transactional
    def update(Incidence incidenceInstance) {
        if (incidenceInstance == null) {
            notFound()
            return
        }

        if (incidenceInstance.hasErrors()) {
            respond incidenceInstance.errors, view:'edit'
            return
        }

        incidenceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Incidence.label', default: 'Incidence'), incidenceInstance.id])
                redirect incidenceInstance
            }
            '*'{ respond incidenceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Incidence incidenceInstance) {

        if (incidenceInstance == null) {
            notFound()
            return
        }

        incidenceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Incidence.label', default: 'Incidence'), incidenceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'incidence.label', default: 'Incidence'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
