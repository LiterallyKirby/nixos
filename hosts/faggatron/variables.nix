{ config, lib, ... }: {
  imports = [
    # Choose your theme here:
    ../../themes/nixy.nix
  ];

  config.var = {
    hostname = "faggatron";
    username = "kirby";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "en_US";

    location = "America";
    timeZone = "America/Chicago";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "en_US.UTF-8";

    git = {
      username = "LiteralyKirby";
      email = "soniciscool1232@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = { };
    };
  };
}
