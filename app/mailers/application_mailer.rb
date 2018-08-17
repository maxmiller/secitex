class ApplicationMailer < ActionMailer::Base
  default from: "secitex@ifrn.edu.br"
  layout 'mailer'

  def url_pagamento(participante)
    if Rails.env.development?
      return "http://localhost:3000/participantes/#{participante.id}/pagar"
    else
      return "http://eventos.ifrn.edu.br/secitex2018/login/participantes/#{participante.id}/pagar"
    end
  end
  
end
