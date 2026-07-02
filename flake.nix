{
  description = "A simple Joker app";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
     Vote = {};
    in {
      apps = forEachSupportedSystem ({ pkgs }: {
        default = {
          type = "app";
          program = "${pkgs.writeShellApplication {
            name = "joker";
            runtimeInputs = [ pkgs.bash ];
            text = builtins.readFile ./joker.sh;
          }}/bin/joker";
        };
      });
    };
}

