{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "user02";
  home.homeDirectory = "/home/user02";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.ansible
  ];

  programs.git = {
    enable = true;
    userName = "Benjamin Tong";
    userEmail = "ben@bentong.xyz";
  };

  programs.mangohud = {
    enable = true;
    enableSessionWide = true;
    # see https://github.com/flightlessmango/MangoHud/blob/master/bin/MangoHud.conf
    # and https://github.com/flightlessmango/MangoHud#mangohud_config-and-mangohud_configfile-environment-variables
    settings = {
      position = "top-right";
      round_corners = "15.0";
      gpu_stats = true;
      gpu_temp = true;
      gpu_core_clock = true;
      gpu_mem_clock = true;
      gpu_power = true;
      gpu_load_change = true;
      cpu_stats = true;
      cpu_mhz = true;
      cpu_temp = true;
      cpu_power = true;
      cpu_load_change = true;
      io_stats = true;
      io_read = true;
      io_write = true;
      fps = true;
      fps_color_change = true;
      frametime = true;
      frame_timing = true;
      font_scale = 1.5;
      toggle_hud = "Shift_R+F12";
      no_display = true; # Hide the hud by default
    };
  };
}
