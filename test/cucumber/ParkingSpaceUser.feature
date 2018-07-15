Feature: Cadastrar um novo usuario no sistema
  
  
  Scenario: Cadastrar um novo usuario no sistema
    Given Estou na pagina de cadastrar usuario
    When Eu digito no nome "Biu" primeiro nome "Fulano" sobrenome "Lima"
    And Seleciono "CIn"
    And Clico no botao cadastrar
    Then Eu vou para pagina "Home"
  
  Scenario: Cadastrar um novo usuario no sistema com valor numerico
    Given Estou na pagina de cadastrar usuario
    When Eu digito no nome "123" primeiro nome "123" sobrenome "123"
    And Seleciono "CIn"
    And Clico no botao cadastrar
    Then Eu continuo na pagina de cadastro
  
  Scenario: Cadastrar um mesmo usuario mais de uma vez no sistema
    Given O sistema tem um usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    When Eu tento cadastrar um novo usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    Then O sistema tem o usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
 
  Scenario: Alterar nome do usuario no sistema
    Given O sistema tem um usuario com o nome "Biu", primeiro nome "Fulano" e sobrenome "Lima"
    When Eu altero o nome do usuario "Biu" para o novo nome "Bino"
    Then O sistema tem o usuario com o nome "Bino", primeiro nome "Fulano" e sobrenome "Lima"