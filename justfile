setup:
    meson setup builddir --wipe --native-file clang-ccache.native.ini

build:
    meson compile -C builddir

run: build
    ./builddir/cppskeleton

test: build
    meson test -C builddir

brew:
    brew bundle install # reads Brewfile

vscode:
    cat vscode-extensions.txt | xargs -L 1 code --install-extension
