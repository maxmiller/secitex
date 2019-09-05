class AvaliacaoMailer < ApplicationMailer

  def avaliacao_atribuida(avaliador, trabalho)
    @avaliador = avaliador
    @trabalho = trabalho

    if Rails.env.development?
      @download = "http://localhost:3000" + @trabalho.download
    else
      @download = "http://191.252.185.219" + @trabalho.download
    end

    mail to: avaliador.email, subject: '[VI EXPOTEC] Avaliação do trabalho #'+trabalho.id.to_s+' atribuída para você'
  end

  def avaliacao_removida(avaliador, trabalho)
    @avaliador = avaliador
    @trabalho = trabalho

    mail to: avaliador.email, subject: '[VI EXPOTEC] Avaliação removida de você'
  end

  def trabalho_aprovado(trabalho)
    @trabalho = trabalho

    mail to: trabalho.participante.email, subject: '[VI EXPOTEC] Seu trabalho foi selecionado!'
  end

  def trabalho_reprovado(trabalho)
    @trabalho = trabalho

    mail to: trabalho.participante.email, subject: '[VI EXPOTEC] Avaliação do seu trabalho'
  end

  def trabalho_final(trabalho)
    @trabalho = trabalho

    mail to: trabalho.participante.email, subject: '[VI EXPOTEC] Envio da versão final do trabalho #'+trabalho.id.to_s+'!'
  end

  def minicurso_aprovado(minicurso)
    @minicurso = minicurso

    mail to: minicurso.participante.email, subject: '[VI EXPOTEC] Sua proposta de minicurso/oficina foi aceita!'
  end

  def minicurso_reprovado(minicurso)
    @minicurso = minicurso

    mail to: minicurso.participante.email, subject: '[VI EXPOTEC] Avaliação da sua proposta de minicurso'
  end

  def equipe_validada(equipe)
    @equipe = equipe

    mail to: equipe.participante.email, subject: '[VI EXPOTEC] Sua equipe para a olimpíada de robótica foi validada!'
  end

end
