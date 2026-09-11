draw_sprite(sCursor,0,mouse_x,mouse_y);

draw_set_font(fUI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(2,-5,global.score);