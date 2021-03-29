{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs;[
    (emacsWithPackages (epkgs:
      (with epkgs.melpaStablePackages; [
        ox-hugo
      ])))
    hugo
    rsync
  ];
}
