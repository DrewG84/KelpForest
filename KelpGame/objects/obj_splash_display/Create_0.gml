/// @description Insert description here
// You can write your code in this editor


control_label = scribble("[wave][spr_mouse] Use your mouse to interact with this game[/]")
control_label.starting_format("ft_slider_label", YELLOW);
control_label.align(fa_center, fa_top);

title = scribble("Kelp Forest Snap!");
title.starting_format("ft_button1", ACCENT);
title.scale(1);
//species_name.wrap(508);
title.line_spacing("95%");
title.align(fa_center, fa_top);

var _desc = "Explore the Pacific Kelp Forest ecosystem and take creative photos of its inhabitants"

description = scribble(_desc);
description.starting_format("ft_body", WHITE);
description.wrap(700);
description.scale(0.8);
description.line_spacing("90%");
description.align(fa_center, fa_top);