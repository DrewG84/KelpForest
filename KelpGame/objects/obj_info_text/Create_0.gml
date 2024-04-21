/// @description Insert description here
// You can write your code in this editor
array_pos = obj_album_display.array_pos;
var album_pos = global.album[array_pos];

if !is_undefined(album_pos.star) {
star = album_pos.star;


star_label = scribble("[wave][spr_star] Star Subject[/]")
star_label.starting_format("ft_slider_label", YELLOW);

name = star.name;

switch (name) {
	case "California Sheephead (M)":
		latin = "Semicossyphus pulcher";
		desc = "All sheephead are born female and can develop into males when the ratio of males to females becomes imbalanced in a local population";
		link = "https://www.montereybayaquarium.org/animals/animals-a-to-z/california-sheephead";
		
	break;
	case "California Sheephead (F)":
		latin = "Semicossyphus pulcher";
		desc = "All sheephead are born female and can develop into males when the ratio of males to females becomes imbalanced in a local population";
		link = "https://www.montereybayaquarium.org/animals/animals-a-to-z/california-sheephead";

	break;
	case "Garibaldi":
		latin = "Hypsypops rubicundus";
		desc = "Garibaldi are named after the Italian hero, Giuseppe Garibaldi, who in the 1840s, an decided to start wearing bright red shirts as part of his personal style.";
		link = "https://www.montereybayaquarium.org/animals/animals-a-to-z/garibaldi";
		
	break;


}


species_name = scribble(name);
species_name.starting_format("ft_button1", WHITE);
species_name.scale(0.6);
species_name.wrap(508);
species_name.line_spacing("95%");

latin_name = scribble(latin);
latin_name.starting_format("ft_slider_label", ACCENT);
latin_name.wrap(508);
//species_name.line_spacing("95%");

description = scribble(desc);
description.starting_format("ft_slider_label", WHITE);
description.wrap(508);
description.scale(0.8);
description.line_spacing("90%");
} else {
	
	star = -1;
	
}