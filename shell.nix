{ pkgs ? import <nixpkgx> {}, system }:
with pkgs;
let
  basePackages = [
    platformio
    avrdude
  ];

  inputs = basePackages;

  hooks = ''
  '';
in
mkShell {
  name = "Marlin fork";
  buildInputs = inputs;
  shellHook = hooks;
}
