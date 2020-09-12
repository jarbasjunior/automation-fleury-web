# language: pt

Funcionalidade: Listar Unidades

  Como um usuário
  Desejo listar as unidades da Fleury
  Para visualizar seus detalhes

  Esquema do Cenário: Ver detalhes da primeira unidade da lista
    Dado que clico no menu "Unidades" na navbar
    Quando eu selecionar a <facilidade>
    E clicar no link Ver detalhes do primeiro card da lista
    Então devo visualizar o nome da <unidade> na tela de detalhes da unidade

    Exemplos:
      | facilidade                                                                   | unidade                  |
      | 'Atendimento noturno'                                                        | 'Higienópolis'           |
      | 'Próximo ao metrô, Vacinação'                                                | 'Paraíso'                |
      | 'Bicicletário e vaga verde, Atendimento aos domingos, Unidades em shoppings' | 'Shopping Anália Franco' |
