Dado("que esteja no site Bonita") do
  visit 'http://10.4.20.66:8080/bonita/login.jsp?redirectUrl=%2Fbonita%2Fportal%2Fhomepage'
end

Dado("que realize o login com usuário {string} e senha {string}") do |login, senha|
  login_page.login_page(login, senha)
end

Dado('valide que foi logado') do
    login_page.valida_login
end
