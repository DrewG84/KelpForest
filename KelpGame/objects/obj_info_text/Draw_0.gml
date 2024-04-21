/// @description Insert description here
// You can write your code in this editor
if star != -1 {
	star_label.draw(1290 + 40, 82);
	species_name.draw(1290 + 40, 195 - 40);
	
	var title_height = species_name.get_height()
	latin_name.draw(1290 + 40, 195 - 40 + title_height + 10);
	
	var latin_height = latin_name.get_height()
	description.draw(1290 + 40, 195 - 40 + title_height + latin_height + 20);
	
}