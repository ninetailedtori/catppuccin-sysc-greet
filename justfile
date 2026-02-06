_default:
    @just --list

build:
    whiskers src/sysc-greet.tera
    whiskers src/generate-wallpapers.tera
    python3 src/generate-wallpapers.py
    mv wallpapers/*latte*.png wallpapers/latte/
    mv wallpapers/*frappe*.png wallpapers/frappe/
    mv wallpapers/*macchiato*.png wallpapers/macchiato/
    mv wallpapers/*mocha*.png wallpapers/mocha/
