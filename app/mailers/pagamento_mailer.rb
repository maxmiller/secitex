class PagamentoMailer < ApplicationMailer

  def aprovado(participante)
    @participante = participante
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição confirmado!')
  end

  def em_processamento(participante)
    @participante = participante
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição em processamento')
  end

  def em_mediacao(participante)
    @participante = participante
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição em mediação')
  end

  def pendente(participante)
    @participante = participante
    @url_pagamento = url_pagamento(participante)
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição pendente')
  end

  def rejeitado(participante)
    @participante = participante
    @url_pagamento = url_pagamento(participante)
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição rejeitado')
  end

  def cancelado(participante)
    @participante = participante
    @url_pagamento = url_pagamento(participante)
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição cancelado')
  end

  def devolvido(participante)
    @participante = participante
    @url_pagamento = url_pagamento(participante)
    mail(to: participante.email, subject: '[VI EXPOTEC] Pagamento da taxa de inscrição devolvido')
  end

end
