show_debug_message("MainMenuButtonStart() Left-Released")

instance_deactivate_layer(layer_get_id("MainMenu"));
instance_activate_layer(layer_get_id("Playing"));

ProcessIrisResponse();
UpdatePlayerBids();

