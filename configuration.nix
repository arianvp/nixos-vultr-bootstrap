{ config, pkgs, ...}:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/vda";

  services.openssh.enable = true;


  users.extraUsers.nixos = {
    isNormalUser = true;

    openssh.authorizedKeys.keys =
      [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqq3LWPkSfldIKiBFK+/JYSQgf/uehjKaDOQFFMV/L8IdQ59H6r0swHj6Ohcg7ThkxaA01BcVQWJiHokza5t9Y3MqiMYu1qGCCfwXnVEHnM6ORacOFgYioY7AaAxmKR3Vg09oJKnMgDFPrtLUke2/6I9Mzj+eCOhTLaO0CJFgR6J2wwQV+PNF2eBNfT2WBzVk6/3LAlElfgwU67ct+NAJ1W6p5n3gTD2iRh/0mdq0UFf/wA8OC0+xc5tWZDbmdq2wFAzm/8CvgCqEC6vmCcTyrGQStj6TFO3nhEJN9z4oPNzT9sEeghWT+gEJ/q8LcO//I4Pw0flK/B90X0sLxa5rP (none)"
      ];

  };

  system.stateVersion = "15.09";
}
