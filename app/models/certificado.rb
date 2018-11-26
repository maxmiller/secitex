class Certificado < ApplicationRecord
  belongs_to :usuario

  before_create :definir_texto, :processar_fragmentos

  INICIO = ""
  FINAL = " IV SECITEX, realizada no Campus Natal Central do Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte, no período de 29 a 31 de outubro de 2018."
  FINAL_PARTICIPACAO = " IV SECITEX, realizada no Campus Natal Central do Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte, no período de 29 a 31 de outubro de 2018, com carga horária de 20h."

  def data
    "31 de outubro de 2018"
    #I18n.l self.created_at, format: :long
  end

  private

  def definir_texto
    if self.texto.end_with?(", participou da")
      self.texto = INICIO + self.texto + FINAL_PARTICIPACAO
    else
      self.texto = INICIO + self.texto + FINAL
    end
  end

  def processar_fragmentos
    self.texto.gsub!("[nome]", "<strong>#{self.usuario.nome}</strong>")
    self.texto.gsub!("[b]", "<strong>")
    self.texto.gsub!("[/b]", "</strong>")
  end

end
