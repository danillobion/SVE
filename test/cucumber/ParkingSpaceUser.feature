Feature: Cadastrar um novo usuario no sistema
  	As a usuario
  	I want to cadastrar um novo usuario
  	So that o usuario foi cadastrado
  
  Scenario: Cadastrar um novo usuario no sistema
    Given Estou na pagina de cadastrar usuario
    When Eu digito "Biu" para o nome, "Fulano" para o primeiro nome e "Lima" para o sobrenome
    And Seleciono "CIn"
    And Clico no botao cadastrar
    Then Eu vou para pagina "Home"
  
  Scenario: Cadastrar um novo usuario no sistema com valor numerico
    Given Estou na pagina de cadastrar usuario
    When Eu digito "123" para o nome, "123" para o primeiro nome e "123" para o sobrenome
    And Seleciono "CIn"
    And Clico no botao cadastrar
    Then Eu continuo na pagina de cadastro
  
  Scenario: Cadastrar um mesmo usuario mais de uma vez no sistema
    Given O sistema tem um usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    When Eu tento cadastrar um novo usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    Then O sistema tem somente um usuario com o nome "Biu"
 
  Scenario: Alterar nome do usuario no sistema
    Given O sistema tem um usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    When Eu altero o nome do usuario "Biu" para o novo nome "Bino"
    Then O sistema tem somente um usuario com o nome "Bino"