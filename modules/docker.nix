{ ... }:

{
  virtualisation.docker.enable = true;
  users.users.sample.extraGroups = [
    "docker"
  ];
}
