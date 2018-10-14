module Admin::MinicursosHelper
  
  def avaliacao_minicurso(avaliacao)
    if avaliacao == Minicurso::AVALIACAO[:aceito]
      return "<span class='label label-success'>Aceito</span>"
    elsif avaliacao == Minicurso::AVALIACAO[:reprovado]
      return "<span class='label label-danger'>Não aceito</span>"
    else
      return "<span class='label label-default'>Pendente</span>"
    end
  end

  def avaliacao_options
    [['Reprovado', -1], ['Pendente', 0], ['Aprovado', 1]]
  end
  
end
