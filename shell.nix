{pkgs ? import <nixpkgs> {}}: let
  python = pkgs.python3.withPackages (p:
    with p; [
      numpy
      matplotlib
      pandas
      scikitlearn
    ]);
in
  pkgs.mkShell {
    buildInputs = [python];

    shellHook = ''
      export PYTHONPATH="${python}/${python.sitePackages}"
    '';
  }
