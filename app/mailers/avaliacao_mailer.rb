class AvaliacaoMailer < ApplicationMailer

  def avaliacao_atribuida(avaliador, trabalho)
    @avaliador = avaliador
    @trabalho = trabalho

    if Rails.env.development?
      @download = "http://localhost:3000" + @trabalho.download
    else
      @download = "http://submissaosecitex.ifrn.edu.br" + @trabalho.download
    end

    mail to: avaliador.email, subject: '[IV SECITEX] Avaliação atribuída para você'
  end

  def trabalho_aprovado(trabalho)
    @trabalho = trabalho

    mail to: trabalho.participante.email, subject: '[IV SECITEX] Trabalho aprovado!'
  end

  def trabalho_reprovado(trabalho)
    @trabalho = trabalho

    mail to: trabalho.participante.email, subject: '[IV SECITEX] Avaliação do seu trabalho'
  end

  def minicurso_aprovado(minicurso)
    @minicurso = minicurso

    mail to: minicurso.participante.email, subject: '[IV SECITEX] Sua proposta de minicurso foi aprovada!'
  end

  def minicurso_reprovado(minicurso)
    @minicurso = minicurso

    mail to: minicurso.participante.email, subject: '[IV SECITEX] Avaliação da sua proposta de minicurso'
  end

end
