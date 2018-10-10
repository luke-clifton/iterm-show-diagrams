{nixpkgs ? import <nixpkgs> {}, iterm-show ? null}:
let
  argSet = if isNull iterm-show then {}
    else { iterm-show = nixpkgs.haskellPackages.callPackage iterm-show {}; };
in
  nixpkgs.haskellPackages.callPackage ./iterm-show-diagrams.nix argSet
