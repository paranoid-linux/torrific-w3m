#!/usr/bin/env


## Find true directory script resides in, true name, and true path
__SOURCE__="${BASH_SOURCE[0]}"
while [[ -h "${__SOURCE__}" ]]; do
    __SOURCE__="$(find "${__SOURCE__}" -type l -ls | sed -n 's@^.* -> \(.*\)@\1@p')"
done
__DIR__="$(cd -P "$(dirname "${__SOURCE__}")" && pwd)"
__NAME__="${__SOURCE__##*/}"
__PATH__="${__DIR__}/${__NAME__}"
__AUTHOR__='S0AndS0'
__DESCRIPTION__='Updates W3M and Tor RC configuration files'


_cfg_path="${__DIR__}/torrific-w3m.cfg"
_old_port='9999'
_new_port='9999'
_torrc='/etc/tor/torrc'


## Provides: 'falure' <line-number> <command> exit-code
source "${__DIR__}/shared_functions/modules/trap-failure/failure.sh"
trap 'failure "LINENO" "BASH_LINENO" "${BASH_COMMAND}" "${?}"' ERR

## Provides:  'argument_parser <ref_to_allowed_args> <ref_to_user_supplied_args>'
source "${__DIR__}/shared_functions/modules/argument-parser/argument-parser.sh"


__license__(){
    _year="$(date +'%Y')"
    cat <<EOF
${__DESCRIPTION__}
Copyright (C) ${_year:-2020} ${__AUTHOR__:-S0AndS0}

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
EOF
}


usage() {
    local _message="${1}"
    cat <<EOF
${__DESCRIPTION__}


--help      -h ${_help}

    Prints this message and exists


--license   -l ${_license}

    Prints license and exits


--old-port ${_new_port}

    Old HTTP Tunnel port number, default 9999


--new-port ${_new_port}

    New HTTP Tunnel port number, default 9999


--cfg-path  --cfg='${_cfg_path}'

    w3m configuration file path


--torrc='${_torrc}'
EOF

    (("${#_message}")) && {
        printf >&2 '\n## Error: %s\n' "${_message}"
    }
}


#
#    Read & save recognized arguments to variables
#
_args=("${@}")
#_args=("${@:?# No arguments provided try: ${__NAME__} help}")
_valid_args=('--help|-h|help:bool'
             '--license|-l|license:bool'
             '--old-port:alpha_numeric'
             '--new-port:alpha_numeric'
             '--cfg-path|--cfg:path'
             '--torrc:path')
argument_parser '_args' '_valid_args'
_exit_status="$?"


((_help)) || ((_exit_status)) && {
    usage
    exit ${_exit_status:-0}
}

((_license)) && {
    __license__
    exit ${_exit_status:-0}
}

((_new_port)) || {
    usage "No port undefined"
    exit 1
}

[[ -f "${_cfg_path}" ]] || {
    usage "Cannot find w3m configuration file for path -> ${_cfg_path}"
    exit 1
}

[[ -f "${_torrc}" ]] || {
    usage "Cannot find Tor configuration file for path -> ${_torrc}"
    exit 1
}


sed -i "/:[0-9]*.\$/ s#:${_old_port}#:${_new_port}#g" "${_cfg_path}"

sed -i "/^HTTPTunnelPort [0-9]*.\$/ s#${_old_port}#${_new_port}#" "${_torrc}"

