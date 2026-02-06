_default:
    @just --list

build: build-themes build-wallpapers

build-themes:
    whiskers src/sysc-greet.tera

build-wallpapers:
    whiskers src/generate-wallpapers.tera
    python3 src/generate-wallpapers.py

package: package-themes package-wallpapers

package-themes: compress-themes

compress-themes:
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-themes-latte.tar.xz' 'themes/latte/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-themes-frappe.tar.xz' 'themes/frappe/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-themes-macchiato.tar.xz' 'themes/macchiato/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-themes-mocha.tar.xz' 'themes/mocha/'

package-wallpapers: optimise organise-wallpapers compress-wallpapers

optimise:
    bash src/optipng.in

[working-directory: 'wallpapers/']
organise-wallpapers:
    mv -t "latte/"      *latte*.png     || continue
    mv -t "frappe/"     *frapp*.png     || continue
    mv -t "macchiato/"  *macchiato*.png || continue
    mv -t "mocha/"      *mocha*.png     || continue

compress-wallpapers:
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-wallpapers-latte.tar.xz' 'wallpapers/latte/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-wallpapers-frappe.tar.xz' 'wallpapers/frappe/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-wallpapers-macchiato.tar.xz' 'wallpapers/macchiato/'
    tar -I 'xz -T0 -c -z --best -' -cf 'package/sysc-greet-wallpapers-mocha.tar.xz' 'wallpapers/mocha/'
