{
  description = "Curriculum";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        texliveBasic
        texlivePackages.latexmk
      ];

      shellHook = ''
          echo Nix devshell for: curriculum
          echo - type *exit* to quit the shell
      '';
    };
  };
}
