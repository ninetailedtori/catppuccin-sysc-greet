<h3 align="center">
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
    Catppuccin for <a href="https://nomadcxx.github.io/sysc-greet">sysc-greet</a>
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
    <a href="https://github.com/ninetailedtori/catppuccin-sysc-greet/stargazers"><img src="https://img.shields.io/github/stars/ninetailedtori/catppuccin-sysc-greet?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
    <a href="https://github.com/ninetailedtori/catppuccin-sysc-greet/issues"><img src="https://img.shields.io/github/issues/ninetailedtori/catppuccin-sysc-greet?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
    <a href="https://github.com/ninetailedtori/catppuccin-sysc-greet/contributors"><img src="https://img.shields.io/github/contributors/ninetailedtori/catppuccin-sysc-greety?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
    <img src="https://raw.githubusercontent.com/ninetailedtori/catppuccin-sysc-greet/main/assets/previews/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="https://raw.githubusercontent.com/ninetailedtori/catppuccin-sysc-greet/main/assets/previews/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="https://raw.githubusercontent.com/ninetailedtori/catppuccin-sysc-greet/main/assets/previews/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="https://raw.githubusercontent.com/ninetailedtori/catppuccin-sysc-greet/main/assets/previews/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="https://raw.githubusercontent.com/ninetailedtori/catppuccin-sysc-greet/main/assets/previews/mocha.webp"/>
</details>

## Usage

1. Copy the file at [`themes/<flavor>/catppuccin-<flavor>-<accent>.toml`](themes/)
   to your `/usr/share/sysc-greet/themes/` or `~/.config/sysc-greet/themes/`
   folder.
2. Copy the wallpapers to the `/usr/share/sysc-greet/wallpapers/` folder.
3. Use `F1` -> `Themes` and select your theme.
4. Use `F1` -> `Backgrounds` and select your wallpaper.
5. Your selection is saved automatically to your config file!

## Building

### Prerequisites
- bash      (required for `just optimise` - GNU parallel implementation)
- tar       (required for `just compress`)
- xz        (required for `just compress`)
- optipng   (required for `just optimise`)
- whiskers  (required for `just build-themes`)
- python3   (required for `just build-wallpapers`)

### All
- To build all,                 `just build`.
- To package all,               `just package`.

### Themes
- To build the themes,          `just build-themes`.
- To package the themes,        `just package-themes`.

### Wallpapers
- To build the wallpapers,      `just build-wallpapers`.
- To package the wallpapers,    `just package-wallpapers`.
- To build a single wallpaper,  `python3 src/generate-wallpapers.py --theme/-t <theme-name>`.

If you made a custom theme with a different name and wish to generate wallpapers
for it, add it to the `custom_themes` array in `load_custom_themes()` within
`src/generate-wallpapers.py`!

## FAQ

- Q: Isn't there an upstream theme?
- A: Yep! But:
  - The upstream theme is a fixed Catppuccin Mocha - Mauve theme, and this
    provides all flavours!
  - Since this theme requires an accent, we've made a dedicated repo
    for those of us who want to use different theme styles and accents!

## 💝 Thanks to

- [ninetailedtori](https://github.com/ninetailedtori)

&nbsp;

<p align="center">
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
    Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
    <a href="https://github.com/ninetailedtori/catppuccin-sysc-greet/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
