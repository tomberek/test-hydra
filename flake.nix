{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-compat.url = "github:edolstra/flake-compat";
  outputs = inputs: {
    hydraJobs = ({inp ? inputs.nixpkgs}: {
      ran =  {
        x86-64-linux = 
        if builtins.isString inp
        then (import inp {system="x86_64-linux";}).ran
        else inputs.legacyPackages.x86_64-linux.ran;
      };
    });
  };
}
