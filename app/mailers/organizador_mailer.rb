class OrganizadorMailer < ApplicationMailer
 def avaliador_cadastrado(organizador)
    @avaliador = organizador
    mail(to: organizador.email, subject: '[IV SECITEX] Avaliador cadastrado com sucesso!')
  end
end
