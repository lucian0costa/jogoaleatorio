var _hor = keyboard_check(ord("A")) - keyboard_check(ord("D"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(-_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined,undefined, move_speed, move_speed);

if (_hor != 0 or _ver !=0) {
    if (_ver > 0) sprite_index = personagem_frente_andando;
        else if (_ver < 0)sprite_index = personagem_andando_atras;
            else if(_hor < 0)sprite_index = personagem_andando_direita;
                else if(_hor > 0) sprite_index = personagem_andando_esquerda;
}
else {
	if (sprite_index == personagem_frente_andando) sprite_index = personagem_parado;
        else if (sprite_index == personagem_andando_atras) sprite_index = personagem_parado_atras;
            else if(sprite_index == personagem_andando_direita) sprite_index = personagem_parado_direita;
                else if(sprite_index == personagem_andando_esquerda) sprite_index = personagem_parado_esquerda;
}
if (keyboard_check_direct(vk_shift)){
    if (move_speed == 1){
        move_speed += 1;
    }
    else {
    	move_speed = 1; 
    }
}