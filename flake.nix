{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {pkgs, ...}: {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.

        # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
        devShells.default = let
          release-please = pkgs.buildNpmPackage {
            name = "release-please";
            version = "17.3.0";

            src = pkgs.fetchFromGitHub {
              owner = "googleapis";
              repo = "release-please";
              rev = "891bcf6253b390e39df9ff3e1c059a836bd39c98";
              hash = "sha256-s6FSnyTNpU9x1q2O/fNlyb720CCTDMBrQtqX8TaDQfA=";
            };
            npmBuildScript = "compile";

            npmDepsHash = "sha256-w1HMWzOC99LgNEek0/bIKu6pXruztgep4DS7BsxthIw=";
          };
        in
          pkgs.mkShell {
            packages = [release-please];
          };
      };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.
      };
    };
}
