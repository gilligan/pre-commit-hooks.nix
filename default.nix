let
  sources = import ./nix/sources.nix;
  pkgs = sources.nixpkgs;
  system = builtins.currentSystem;
  _pkgs = import ./nix { inherit sources system; nixpkgs = pkgs; };
in
_pkgs.packages
