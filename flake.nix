{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";
  outputs = inputs: {
    hydraJobs = ({inp ? inputs.nixpkgs}: {
      ran =  {
        x86-64-linux = (if builtins.isString inp then builtins.getFlake inp else inp).legacyPackages.x86_64-linux.ran;
      };
    });
  };
}
