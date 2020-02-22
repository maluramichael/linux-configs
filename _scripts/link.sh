#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # script directory
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")" # script path
__base="$(basename ${__file} .sh)" # script name

echo "Link from ${__dir} to $HOME"

link(){
    from="${__dir%/}/${1}"
    to="${HOME%/}/${1}"

    echo "[+] Create a symlink ${from} -> ${to}"
    if [ -f "${to}" ] || [ -d "${to}" ]; then
        if [[ -h "${to}" ]]; then
            echo "Remove existing symlink ${to}"
            rm -r ${to}
        else
            echo "Backup existing ${to} ${to}.bak"
            mv ${to} ${to}.bak
        fi
    fi

    ln -s ${from} ${to}
}

link ".shell"
link ".conky.d"
link ".zshrc"
link ".tmux.conf"
link ".profile"
link ".npmrc"
link ".gitconfig"
link ".conkyrc"
link ".config/alacritty.yml"
