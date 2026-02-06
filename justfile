_default:
    @just --list

build:
    whiskers src/sysc-greet.tera
    whiskers src/generate-wallpapers.tera
    python3 src/generate-wallpapers.py
