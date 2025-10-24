//movimentação do personagem
var direita = keyboard_check(vk_right);
var esquerda = keyboard_check(vk_left);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);

var check_tecla = direita - esquerda != 0 or baixo - cima != 0;

direcao = point_direction(0,0,direita - esquerda,baixo - cima);

vel_horizontal = lengthdir_x(velocidade * check_tecla, direcao);
vel_vertical = lengthdir_y(velocidade * check_tecla,direcao);

x = x + vel_horizontal;
y = y + vel_vertical;