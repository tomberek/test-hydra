{
  inputs.nixpkgs.url = "nixpkgs";
  outputs = inputs: {
    hydraJobs = ({
      hello.x86-64-linux = (inputs: inputs.nixpkgs.legacyPackages.x86_64-linux.hello);
    });
  };
}
