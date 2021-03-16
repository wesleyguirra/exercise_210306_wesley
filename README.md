# Exercício 01 - Evento em grupo

## Descrição
Um evento de grupo será criado por um usuário. O evento de grupo deve ser ocorrer por um número inteiro de dias, por exemplo, 30 ou 60. Deve haver atributos para definir e atualizar o início, término e duração do evento e calcular o valor ausente se os 2 primeiros forem fornecidos. O evento também tem nome, descrição (que suporta formatação) e local. O evento pode ser rascunho ou publicado. Para publicar todos os campos são obrigatórios, ele pode ser salvo com apenas um subconjunto de campos antes de ser publicado. Quando o evento é excluído/removido, deve ser mantido no banco de dados e marcado como tal.


## Entregável
Escreva um modelo de AR, especificação e migração para um GroupEvent que atenderia às necessidades da descrição acima. Em seguida, escreva o controller da API e a especificação para oferecer suporte a requests/responses JSON para gerenciar esses GroupEvents. Para os fins deste exercício, ignore autenticação. Forneça sua solução como um aplicativo Rails, abra uma PR neste repositório.
