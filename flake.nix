{
  inputs.nixpkgs.url = "nixpkgs";
  outputs = inputs: {
    hydraJobs = (inputs: {
      hello.x86-64-linux = inputs.nixpkgs.legacyPackages.x86_64-linux.hello;
    });
  };
}
