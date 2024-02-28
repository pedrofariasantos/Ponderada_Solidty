
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuContrato {
    //Variável de estado para armazenar a idade
    uint public idade = 18;

    //Variável de estado para armazenar o endereço do dono do contrato
    address public dono;

    //Construtor para definir o dono do contrato no momento da implantação
    constructor() {
        dono = msg.sender; //O dono implanta o contrato
    }

    //Função para definir a idade. Restrita ao dono do contrato
    function setIdade(uint novaIdade) public {
        require(msg.sender == dono, "Somente o dono pode alterar a idade."); //Restrição do acesso só para o dono
        idade = novaIdade; //Atualiza a idade
    }

    //Função para obter a idade
    function getIdade() public view returns (uint) {
        return idade; 
    }
}

