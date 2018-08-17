class InscricaoMailer < ApplicationMailer

  def realizada(inscricao)
    @inscricao = inscricao
    mail(to: @inscricao.participante.email, subject: '[IV SECITEX] Inscrição em minicurso realizada com sucesso!')
  end

  def cancelada(inscricao)
    @inscricao = inscricao
    mail(to: @inscricao.participante.email, subject: '[IV SECITEX] Cancelamento de inscrição em minicurso')
  end
end
