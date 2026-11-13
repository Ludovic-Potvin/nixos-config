export PATH="$HOME/.local/bin:$PATH"

zoxide init fish --cmd cd | source

function nrs --description "nixos-rebuild switch"
    sudo nixos-rebuild switch --flake /home/lpotvin/nixos#spidermonkey
end

function nrb --description "nixos-rebuild build"
    nixos-rebuild build --flake /home/lpotvin/nixos#spidermonkey
end
