{nixpkgs ? import <nixpkgs> {}, iterm-show ? null}:
(import ./default.nix {inherit nixpkgs iterm-show;}).env
