{pkgs ? import <nixpkgs> {}}: let
  python = pkgs.python3.withPackages (p:
    with p; [
      numpy
      matplotlib
      pandas
      scikitlearn
      jupyter
    ]);
in
  pkgs.mkShell {
    buildInputs = [python pkgs.just];

    shellHook = ''
      export PYTHONPATH="${python}/${python.sitePackages}"
    '';
  }
