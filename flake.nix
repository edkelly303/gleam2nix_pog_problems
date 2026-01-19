{
  description = "Pog problems";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    gleam2nixpkgs.url = "git+https://git.isincredibly.gay/srxl/gleam2nix";
    gleam2nixpkgs.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      gleam2nixpkgs,
      ...
    }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux.pkgs;
      gleam2nix = gleam2nixpkgs.packages.x86_64-linux.gleam2nix;
      buildGleamApplication = gleam2nixpkgs.lib.x86_64-linux.buildGleamApplication;
    in
    {
      # PACKAGES
      packages.x86_64-linux.default = buildGleamApplication {
        pname = "pog_problems";
        version = "1.0.0";
        src = ./.;
        gleamNix = import ./gleam.nix;
      };

      # SHELL
      devShells.x86_64-linux.default = pkgs.mkShell {
        name = "devshell";
        packages = [
          gleam2nix
          pkgs.gleam
          pkgs.erlang
          pkgs.rebar3
          pkgs.elixir
        ];
        shellHook = ''
          echo "== Entering nix develop shell =="
          echo "|- `gleam --version`"
          echo "|- erlang OTP `erl -noshell -eval 'io:format("~s~n", [erlang:system_info(otp_release)]), init:stop().'`"
          echo "|- `rebar3 --version`"
          echo "|- `elixir --version | tail -1`"
        '';
      };
    };
}
