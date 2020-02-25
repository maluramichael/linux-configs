#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # script directory
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")" # script path
__base="$(basename ${__file} .sh)" # script name

__dotfiles="_dotfiles/"

link(){
    from="${__dir%/}/${1}"
    to="${HOME%/}/${1#${__dotfiles}}"
    if [[ ${1} =~ "/" ]]; then
        directory_structure=`dirname ${to}`

        if [[ ! -d ${directory_structure} ]]; then
            echo "${directory_structure} does not exist"
            mkdir -p "${directory_structure}"
        fi
    fi

    if [[ -h "${to}" ]]; then
        echo "Remove existing symlink ${to}"
        rm -r ${to}
    fi

    if [ -f "${to}" ] || [ -d "${to}" ]; then
        echo "Backup existing ${to} ${to}.bak"
        mv ${to} ${to}.bak
    fi

    echo "[+] Link ${from} -> ${to}"
    ln -s ${from} ${to}
}

find ${__dotfiles} -type f | while read file; do link "${file}"; done
