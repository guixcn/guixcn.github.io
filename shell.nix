{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs;[
    (emacs.pkgs.withPackages (epkgs:
      (with epkgs.melpaStablePackages; [
        ox-hugo
      ])))
    hugo
    rsync
  ];
}
