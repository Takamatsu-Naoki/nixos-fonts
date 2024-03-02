{
  description = "The free fonts collection.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: let 
    forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" "x86_64-darwin" "i686-linux" "aarch64-linux" ];
    in {
    packages = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages."${system}";
      in {
        anzu-moji = pkgs.callPackage ./anzu-moji {};
        asobifont = pkgs.callPackage ./asobifont {};
        azukifont = pkgs.callPackage ./azukifont {};
        honyaji-re = pkgs.callPackage ./honyaji-re {};
        huifont = pkgs.callPackage ./huifont {};
        mitimasu = pkgs.callPackage ./mitimasu {};
        nagayama-kai = pkgs.callPackage ./nagayama-kai {};
        rii-tegaki-fude = pkgs.callPackage ./rii-tegaki-fude {};
        rii-tegaki-n = pkgs.callPackage ./rii-tegaki-n {};
        shigotofont = pkgs.callPackage ./shigotofont {};
        tanuki-magic = pkgs.callPackage ./tanuki-magic {};
        uzurafont = pkgs.callPackage ./uzurafont {};
      });
    };
}
