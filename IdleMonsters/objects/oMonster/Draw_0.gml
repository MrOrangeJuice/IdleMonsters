if(hover)
{
	shader_set(shHover);
	draw_sprite_ext(sprite_index,image_index,x,y+1,1,1,image_angle,#fff7f8,image_alpha);
	draw_sprite_ext(sprite_index,image_index,x,y-1,1,1,image_angle,#fff7f8,image_alpha);
	draw_sprite_ext(sprite_index,image_index,x-1,y,1,1,image_angle,#fff7f8,image_alpha);
	draw_sprite_ext(sprite_index,image_index,x+1,y,1,1,image_angle,#fff7f8,image_alpha);
	shader_reset();
}

draw_self();