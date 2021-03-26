# frozen_string_literal: true

class LoginPage < SitePrism::Page
  element :usuario_page, '#username'
  element :password_page, '#password'
  element :formulario_login, '#LoginForm'

  def login_page(usuario, password)
    usuario_page.visible?
    usuario_page.set(usuario)
    password_page.set(password)
    click_on('Login')
  end

  def valida_login
    retorno = page.has_text? 'Tasks'
    raise "Não foi localizado a pagina incial após logar" if retorno == false
  end
end


#within_frame(0) do
