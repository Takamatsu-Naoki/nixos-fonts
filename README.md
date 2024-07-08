# NixOS Font Registry

<div align="center">
  <a href="https://github.com/Takamatsu-Naoki/access/blob/main/LICENSE">
    <img alt="LICENSE" src="https://img.shields.io/badge/license-MIT-blue.svg?maxAge=43200">
  </a>
</div>
<br/>

This repository serves as a Nix registry for a small collection of open source fonts, primarily focused on Japanese fonts with a few English fonts included. It demonstrates how to create a custom flake registry and can be used to install custom fonts on NixOS.

## Usage

To use this repository as a Nix registry and install the fonts, follow the steps below.

### Step 1: Add the Registry

First, add this repository as as flake registry in your NixOS configuration (`flake.nix`).

```nix
{
  inputs = {
    nixos-fonts.url = "github:Takamatsu-Naoki/nixos-fonts";
  };
}
```

### Step 2: Import Fonts

Then, you can import the fonts into your NixOS configuration (`configuration.nix`). For example:

```nix
{ inputs, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
    ] ++ (with inputs.nixos-fonts.packages.x86_64-linux; [
      anzu-moji
      azukifont
      rii-tegaki-fude
    ]);
  };
```

### Step 3: Rebuild NixOS

Finally, apply the changes by rebuilding your NixOS system:

```sh
sudo nixos-rebuild switch --flake .
```

## Example Usage
To demonstrate how to make a custom flake registry, this repository is structured in a way that allows you to easily add more fonts and extend the registry.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
