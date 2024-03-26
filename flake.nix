{
  description = "nix-cmake-py-test";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        shell =
          with pkgs;
          mkShell {
            packages = [
              cmake
              python312
            ];
          };
      in
      {
        devShells.default = shell;
      }
    );
}
