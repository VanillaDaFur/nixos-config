{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        padding = 20;
        horizontal_padding = 20;

        width = 350;
        height = 200;
        offset = "18x30";
        origin = "top-right";
        title = "Dunst";
        class = "Dunst";

        frame_width = 2;
        frame_color = "#cba6f7";
        separator_height = 2;
        separator_color = "frame";
        corner_radius = 10;

        font = "JetBrainsMono Nerd Font 12";
        alignment = "left";
        show_age_threshold = 60;
        word_wrap = "yes";
        ignore_newline = "no";
        stack_duplicates = true;
        hide_duplicate_count = "no";
        show_indicators = "yes";

        icon_position = "left";
        max_icon_size = 60;
        sticky_history = "no";
        history_length = 6;

        mouse_left_click = "close_current";
        mouse_middle_click = "do_action";
        mouse_right_click = "close_all";

        progress_bar = true;
        progress_bar_height = 10;
        progress_bar_frame_width = 2;
        progress_bar_corner_radius = 3;
      };

      urgency_low = {
        background = "#181825";
        foreground = "#cdd6f4";
        frame_color = "#a6e3a1";
        highlight = "#a6e3a1";
        timeout = 5;
      };

      urgency_normal = {
        background = "#181825";
        foreground = "#cdd6f4";
        frame_color = "#cba6f7";
        highlight = "#cba6f7";
        timeout = 5;
      };

      urgency_critical = {
        background = "#181825";
        foreground = "#cdd6f4";
        frame_color = "#eba0ac";
        highlight = "#eba0ac";
        timeout = 10;
      };
    };
  };
}
