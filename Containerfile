FROM registry.fedoraproject.org/fedora-toolbox:44

RUN dnf5 -y install dnf5-plugins \
    && dnf5 -y install zsh neovim ripgrep fd-find just tmux gcc make tree-sitter-cli uv \
    && dnf5 -y copr enable claaj/typst \
    && dnf5 -y install typst \
    && dnf5 -y copr disable claaj/typst \
    && dnf5 clean all
