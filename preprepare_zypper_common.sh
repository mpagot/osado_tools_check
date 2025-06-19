packages=(
os-autoinst-distri-opensuse-deps # install what requested in https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/9a8b06f39afe23b1a367453f2d5c4ed676815c1a/CONTRIBUTING.md?plain=1#L35
make # make needed to run `make prepare` but not provided by any packages till now
python3 python3-PyYAML # Python needed by https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/9a8b06f39afe23b1a367453f2d5c4ed676815c1a/tools/wheel#L1C3-L1C19
perl-App-cpanminus # make prepare needs cpanm
gcc # cpanm needs gcc
libssh2-devel # perl module Net::SSH2 needs ssh2
libdbus-c++-devel # perl module Net::DBus needs DBUS>=1.3
lua53-devel # perl module Inline Lua needs lua53-devel
)

zypper in -y "${packages[@]}"