/// TENTANDO MACHUCAR O PLAYER E QUEBRAR O ESPINHO, MAS N TA QUEBRANDO O ESPINHO
var espinho_vida = 3;

if(espinho_vida != 0){
	
	other.vida -= 3;
	espinho_vida -=1;
}else{
	if(espinho_vida == 0){
	instance_destroy();
	}
}