# Máquina de Estados - Elevador

Seja um elevador destinado a servir a um prédio de três andares. O problema a ser abordado é o de modelar o funcionamento do elevador, o qual deverá satisfazer às seguintes condições:
1. Caso não haja chamada, o elevador fica parado onde estiver;
2. O elevador dá prioridade ao chamado mais próximo no sentido em que estiver se
movimentando;
3. Um chamado pode ser “desligado” manualmente. Assim, por exemplo, é possível existir uma chamada para um andar em certo instante e, logo em seguida, não
existir mais, sem que o elevador se mova.

Essa máquina de estado pode ser representada pelo seguinte diagrama:

<p align="center">
  <img align="rigth" src="https://user-images.githubusercontent.com/67913073/192736340-629e659b-4ea2-4f1a-bcd4-2c058fbc8d64.png">
</p>

Este projeto tem como objetivo realizar a implementação em VHDL da máquina de estados supracitada, e faz parte da disciplina de **Sistemas Digitais Programáveis** ministrada pelo docente Fabiano Fumes no curso de Engenharia de Controle e Automação do IFSP - Campus Salto. A explicação sobre a implementação em VHDL pode ser encontrada na apresentação [Máquina de Estados - Elevador](https://github.com/Daniel-Lourenco/elevator_state-machine/blob/main/M%C3%A1quina%20de%20Estados%20-%20Elevador.pdf), assim como código em VHDL pode ser encontrado em [elevador.vhd](elevador.vhd)


