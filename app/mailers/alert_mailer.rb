class AlertMailer < ApplicationMailer
	def contact_mail(contact)
       @contact = contact
       mail(to: "alejovelez10@gmail.com", subject: "Alguien nos contacto")
     end
     def pqrs_mail(pqrs)
       @pqrs = pqrs
       mail(to: "alejovelez10@gmail.com", subject: "Alguien genero una pqrs")
     end
     def job_mail(job)
       @job = job
       mail(to: "alejovelez10@gmail.com", subject: "Alguien quiere trabajar con nosotros")
     end
     def comment_mail(comment)
       @comment = comment
       mail(to: "alejovelez10@gmail.com", subject: "Alguien comento una entrada")
     end
end
