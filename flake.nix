{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  outputs = inputs: {
    hydraJobs = ({inp ? inputs.nixpkgs}: {
      hello =  {
        x86-64-linux = (if builtins.isString inp then builtins.getFlake inp else inp).legacyPackages.x86_64-linux.hello;
      };
    });
  };
}
