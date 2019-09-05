class OrganizadorMailer < ApplicationMailer
 def avaliador_cadastrado(organizador)
    @avaliador = organizador
    mail(to: organizador.email, subject: '[VI EXPOTEC] Avaliador cadastrado com sucesso!')
  end
end
