//movimentação do personagem
var direita = keyboard_check(vk_right);
var esquerda = keyboard_check(vk_left);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);


var check_tecla = direita - esquerda != 0 or baixo - cima != 0;

direcao = point_direction(0,0,direita - esquerda,baixo - cima);

vel_horizontal = lengthdir_x(velocidade * check_tecla, direcao);
vel_vertical = lengthdir_y(velocidade * check_tecla,direcao);
 
//colisao do player
if (place_meeting(x+ vel_horizontal,y,Obj_chao))
 {
	while (!place_meeting(x+vel_horizontal,y,Obj_chao)){
		x = x + sign(vel_horizontal);
	}
	vel_horizontal = 0;
}

x = x + vel_horizontal;

if(place_meeting(x,y+vel_vertical, Obj_chao))
{
	while (!place_meeting(x,y+sign(vel_vertical), Obj_chao)){
		y = y + sign(vel_vertical);
	}
	vel_vertical = 0;
}
	
y = y + vel_vertical;
 