class ApplicationMailer < ActionMailer::Base
  default from: "secitex@ifrn.edu.br"
  layout 'mailer'

  def url_pagamento(participante)
    if Rails.env.development?
      return "http://localhost:3000/participantes/#{participante.id}/pagar"
    else
      return "http://submissaosecitex.ifrn.edu.br/login/participantes/#{participante.id}/pagar"
    end
  end

  def test
    mail(to: "claubergb@gmail.com", subject: "Teste SECITEX", body: "Isso é um teste ...")
  end
  
end
