class ApplicationMailer < ActionMailer::Base
  default from: "expotec.ca@ifrn.edu.br"
  layout 'mailer'

  def url_pagamento(participante)
    if Rails.env.development?
      return "http://localhost:3000/participantes/#{participante.id}/pagar"
    else
      return "http://191.252.185.219/login/participantes/#{participante.id}/pagar"
    end
  end

end
