_default:
    @just --list

build:
    whiskers src/sysc-greet.tera
    whiskers src/generate-wallpapers.tera
    python3 src/generate-wallpapers.py
    parallel < optipng.in
    mv wallpapers/*latte*.png wallpapers/latte/
    mv wallpapers/*frappe*.png wallpapers/frappe/
    mv wallpapers/*macchiato*.png wallpapers/macchiato/
    mv wallpapers/*mocha*.png wallpapers/mocha/
    tar -I 'xz -T0 -c -z --best -' -f sysc-greet-wallpapers-latte.tar.xz 'wallpapers/latte/'
    tar -I 'xz -T0 -c -z --best -' -f sysc-greet-wallpapers-frappe.tar.xz 'wallpapers/frappe/'
    tar -I 'xz -T0 -c -z --best -' -f sysc-greet-wallpapers-macchiato.tar.xz 'wallpapers/macchiato/'
    tar -I 'xz -T0 -c -z --best -' -f sysc-greet-wallpapers-mocha.tar.xz 'wallpapers/mocha/'
    rm -rf 'wallpapers/latte' 'wallpapers/frappe' 'wallpapers/macchiato' 'wallpapers/mocha'
