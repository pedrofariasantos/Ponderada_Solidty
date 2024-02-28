# Ponderada_Solidty

Este código define um contrato inteligente em Solidity chamado `MeuContrato`, compatível com a versão 0.8.0 do compilador. O contrato é marcado com a licença MIT, conforme indicado pela primeira linha de comentário, sugerindo que ele é de código aberto e pode ser livremente modificado e distribuído de acordo com os termos dessa licença.

O contrato possui duas variáveis de estado: `idade`, inicialmente definida como 18, e `dono`, que armazena o endereço do proprietário do contrato. A variável `dono` é definida no momento da implantação do contrato através do construtor, que automaticamente atribui o endereço do remetente (a pessoa ou entidade que implanta o contrato) a essa variável.

O contrato fornece uma função `setIdade` que permite ao dono do contrato atualizar o valor da variável `idade`. Essa função inclui uma verificação de segurança `require` para garantir que apenas o dono possa realizar essa atualização, reforçando a restrição de que outros usuários não podem alterar a idade. Além disso, há uma função `getIdade` que permite a qualquer pessoa consultar a idade armazenada no contrato, facilitando a transparência e o acesso à informação sem permitir sua modificação por terceiros.
