# language: pt
 # encoding: UTF-8

@via_varejo
@login_via_varejo
Funcionalidade: via varejo

Contexto:
  Dado que esteja no site Bonita

@login_valido
Cenário: Validar Login
  Dado que realize o login com usuário "reclamante.qa" e senha "hml123"
  E valide que foi logado
