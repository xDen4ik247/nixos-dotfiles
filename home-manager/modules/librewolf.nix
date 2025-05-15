{ inputs, pkgs, ... }:
{
  programs.librewolf = {
    enable = true;
    languagePacks = [ "ru" ];
    profiles = {
      "gemakfy" = {
        id = 0;
        isDefault = true;
        containersForce = true;

        settings = {
          "browser.search.isUS" = true;
          "DisplayBookmarksToolbar" = "never";
          "distribution.searchplugins.defaultLocale" = "en-US";
          "browser.search.region" = "US";
          "general.useragent.locale" = "en-US";
          "browser.bookmarks.showMobileBookmarks" = false;
        };

        search = {
          default = "google";
          order = [ "Google" "Nix Packages" "Nix Options" "Home-manager Options" ];
          engines = {
            "Nix Packages" = {
              urls = [{
                template = "https://search.nixos.org/packages";
                params = [
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@np" ];
            };

            "Nix Options" = {
              definedAliases = [ "@no" ];
              urls = [{
                template = "https://search.nixos.org/options";
                params = [
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            };

            "Home-manager Options" = {
              definedAliases = [ "@ho" ];
              urls = [{
                template = "https://home-manager-options.extranix.com/";
                params = [
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake-white.svg";
            };
          };
        };
      };
    };
  };
}
