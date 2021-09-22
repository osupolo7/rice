# rice
Dotfiles for i3 rice


## Dotfiles setup
```bash
sudo apt update
sudo apt install yadm
yadm clone _url_
```

## pyenv / python
```bash
sudo apt update
sudo apt install make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

cp -R ~/.config/repos/pyenv ~/.pyenv
cp -R ~/.config/repos/pyenv-virtualenv ~/.pyenv/plugins/pyenv-virtualenv
```

## zsh
```bash
sudo apt install zsh
chsh -s `which zsh`

# restart your current session
```

## i3
```bash
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt update
sudo apt install papirus-icon-theme arc-theme
sudo apt install i3-gaps
```

## wallpaper
```bash
sudo apt install feh
feh --bg-scale ~/.config/wallpapers/forest.png
```

## Kitty
```bash
sudo apt install -y python3.6 libharfbuzz-dev zlib libpng liblcms2 freetype libcanberra ImageMagick pygments build-essential pkg-config libdbus-1-dev libxcursor-dev libxrandr-dev libxi-dev libxinerama-dev libgl1-mesa-dev libxkbcommon-x11-dev libfontconfig-dev libx11-xcb-dev liblcms2-dev and libpython3-dev

cd ~/.config/repos/kitty
sudo make
python3 .
```

## Fonts
`fc-cache -fv`

## polybar
```bash
sudo apt install -y build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

cd ~/.config/repos/polybar

mkdir build
cd build
cmake ..
make -j2
sudo make install
```