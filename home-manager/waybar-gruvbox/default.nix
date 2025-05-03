{
  waybar,
  pkgs,
  ...
}: {
  programs.waybar = {
    enable = true;

    style = builtins.readFile ./style.css;

    settings = [
      {
        layer = "top";
        margin-top = 0;
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        spacing = 0;

        modules-left = [
          "custom/appmenuicon"
          "hyprland/workspaces"
          "tray"
          "custom/empty"
        ];

        modules-right = [
          "pulseaudio"
          "keyboard-state"
          "clock"
        ];

        "hyprland/workspaces" = {
          active-only = false;
          disable-scroll = false;
          all-outputs = true;
          format = "{icon}";
          on-click = "activate";

          persistent-workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
          "5" = [ ];
          "6" = [ ];
          };

          format-icons = {
            "1" = "み";
            "2" = "ん";
            "3" = "な";
            "4" = "で";
            "5" = "レ";
            "6" = "イ";
            "7" = "ン";
            "8" = "を";
            "9" = "愛";
            "10" = "そ";
            "11" = "う";
          };
        };

        "custom/empty" = {format = " ";};

        "custom/appmenu" = {
          format = "Apps";
          on-click = "shutdown now";
          tooltip = false;
        };

        "custom/appmenuicon" = {
          format = "";
          on-click = "shutdown now";
          tooltip = false;
        };

        tray = {
          icon-size = 21;
          spacing = 10;
        };

       pulseaudio = {
          format = "{icon}   {volume}%";
          format-bluetooth = "{volume}%  {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
          format-icons = {
            headphone = " ";
            hands-free = " ";
            headset = " ";
            phone = " ";
            portable = " ";
            car = " ";
            default = [" " " " " "];
          };
          on-click = "kitty alsamixer";
        };
      }
    ];
  };
}
