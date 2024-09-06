{
  description = "Integrate kdeconnect with yazi to easily share files with your phone!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {

      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          lua-language-server
          stylua
          selene
        ];
      };
    };
}
