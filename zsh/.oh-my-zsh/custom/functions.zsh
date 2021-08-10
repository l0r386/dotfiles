# My custom functions
mkcd () {
    mkdir -p "$1"
    cd "$1"
}

mkcdt () {
    mkdir -p "/tmp/$1"
    cd "/tmp/$1"
}

rmc () {
    dir=$(pwd)
    cd -
    rm -r $dir
}

rmexceptc () {
    dir=$(pwd)
    ignore_regex="^$dir/$1\(.*\)?"
    find $dir -midepth 1  ! -regex $ignore_regex -delete
}
