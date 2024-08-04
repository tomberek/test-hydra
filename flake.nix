{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-compat.url = "github:edolstra/flake-compat";
  outputs = inputs: {
    hydraJobs = ({inp ? inputs.nixpkgs}: {
      ran =  {
        x86-64-linux = (if builtins.isString inp then builtins.getFlake inp else inp).legacyPackages.x86_64-linux.ran;
      };
    });
  };
}
