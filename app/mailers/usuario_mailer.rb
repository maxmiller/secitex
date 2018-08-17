class UsuarioMailer < ApplicationMailer

  def recuperar_senha(usuario)
    @usuario = usuario
    mail(to: usuario.email, subject: '[IV SECITEX] Recuperação de senha')
  end

end
