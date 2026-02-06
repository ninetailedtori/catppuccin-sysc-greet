_default:
    @just --list

build-all: build-themes build-wallpapers

build-themes:
    whiskers src/sysc-greet.tera

build-wallpapers:
    whiskers src/generate-wallpapers.tera
    python3 src/generate-wallpapers.py

optimise:
    bash src/optipng.in

[working-directory: 'wallpapers/']
move:
    mv -t "latte/"      *latte*.png     || continue
    mv -t "frappe/"     *frapp*.png     || continue
    mv -t "macchiato/"  *macchiato*.png || continue
    mv -t "mocha/"      *mocha*.png     || continue

[working-directory: 'wallpapers/']
compress:
    tar -I 'xz -T0 -c -z --best -' -cf 'sysc-greet-wallpapers-latte.tar.xz' 'latte/'
    tar -I 'xz -T0 -c -z --best -' -cf 'sysc-greet-wallpapers-frappe.tar.xz' 'frappe/'
    tar -I 'xz -T0 -c -z --best -' -cf 'sysc-greet-wallpapers-macchiato.tar.xz' 'macchiato/'
    tar -I 'xz -T0 -c -z --best -' -cf 'sysc-greet-wallpapers-mocha.tar.xz' 'mocha/'

[working-directory: 'wallpapers/']
clean:
    rm -rf 'latte/*' 'frappe/*' 'macchiato/*' 'mocha/*'
