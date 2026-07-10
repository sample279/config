{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "sample279";
        email = "224307167+sample279@users.noreply.github.com";
      };
      init.defaultBranch = "main";
    };
  };

  # Lazygit configuration (optional)
  programs.lazygit = {
    enable = true;
    # settings = { ... }; # Add custom lazygit settings if needed
  };
}
