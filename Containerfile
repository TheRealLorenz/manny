FROM registry.fedoraproject.org/fedora-toolbox:44
RUN dnf -y install neovim ripgrep fd-find just tmux gcc make tree-sitter-cli typst \
    && dnf clean all
