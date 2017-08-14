/// DrawGUI for ButtonChoice

draw_set_font(font_Choices);
draw_set_halign(fa_left);

draw_text(bbox_left + textXOffset, bbox_top + textYOffset, bidText);

draw_set_font(font_ChoicesSub);

draw_text(bbox_left + scoreXOffset, bbox_top + scoreYOffset, bidScoreText);
