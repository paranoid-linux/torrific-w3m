# Torrific W3M
[heading__top]:
  #torrific-w3m
  "&#x2B06; Enables clear-net browsing over the Tor network via W3M web browser"


Enables clear-net browsing over the Tor network via W3M web browser


## [![Byte size of Torrific W3m][badge__main__torrific_w3m__source_code]][torrific_w3m__main__source_code] [![Open Issues][badge__issues__torrific_w3m]][issues__torrific_w3m] [![Open Pull Requests][badge__pull_requests__torrific_w3m]][pull_requests__torrific_w3m] [![Latest commits][badge__commits__torrific_w3m__main]][commits__torrific_w3m__main]



------


- [:arrow_up: Top of Document][heading__top]

- [:building_construction: Requirements][heading__requirements]

- [:zap: Quick Start][heading__quick_start]

- [&#x1F9F0; Usage][heading__usage]

- [&#x1F5D2; Notes][heading__notes]

- [:chart_with_upwards_trend: Contributing][heading__contributing]

  - [:trident: Forking][heading__forking]
  - [:currency_exchange: Sponsor][heading__sponsor]

- [:card_index: Attribution][heading__attribution]

- [:balance_scale: Licensing][heading__license]


------



## Requirements
[heading__requirements]:
  #requirements
  "&#x1F3D7; Prerequisites and/or dependencies that this project needs to function properly"


This repository makes use of Git Submodules to track dependencies, to avoid incomplete downloads clone with the `--recurse-submodules` option...


```Bash
git clone --recurse-submodules git@github.com:paranoid-linux/torrific-w3m.git
```


To update tracked Git Submodules issue the following commands...


```Bash
git pull

git submodule update --init --merge --recursive
```


To force upgrade of Git Submodules...


```Bash
git submodule update --init --merge --recursive --remote
```


> Note, forcing and update of Git Submodule tracked dependencies may cause instabilities and/or merge conflicts; if however everything operates as expected after an update please consider submitting a Pull Request.


______


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; Perhaps as easy as one, 2.0,..."


Make a directory for Git projects and change current working directory...


```Bash
mkdir -p ~/git/hub/paranoid-linux

cd ~/git/hub/paranoid-linux
```


Clone this repository and Submodule dependencies...


```Bash
git clone --recurse-submodules git@github.com:paranoid-linux/torrific-w3m.git
```


Change current working directory and run `update-configs.sh` script...


```Bash
cd ~/git/hub/paranoid-linux/torrific-w3m

sudo ./update-configs.sh
```


Run `linked-install.sh` script...


```Bash
./linked-install.sh
```


______


## Usage
[heading__usage]:
  #usage
  "&#x1F9F0; How to utilize this repository"


After installation use the `torrific-w3m` command to launch terminal based web browser...


```Bash
torrific-w3m --help
```


Example of emidiatly opening URL...


```Bash
torrific-w3m 'https://check.torproject.org/'
```


______


## Notes
[heading__notes]:
  #notes
  "&#x1F5D2; Additional things to keep in mind when developing"


This repository may not be feature complete and/or fully functional, Pull Requests that add features or fix bugs are certainly welcomed.


______


## Contributing
[heading__contributing]:
  #contributing
  "&#x1F4C8; Options for contributing to torrific-w3m and paranoid-linux"


Options for contributing to torrific-w3m and paranoid-linux


---


### Forking
[heading__forking]:
  #forking
  "&#x1F531; Tips for forking torrific-w3m"


Start making a [Fork][tick_tracker__fork_it] of this repository to an account that you have write permissions for.


- Add remote for fork URL. The URL syntax is _`git@github.com:<NAME>/<REPO>.git`_...


```Bash
cd ~/git/hub/paranoid-linux/torrific-w3m

git remote add fork git@github.com:<NAME>/torrific-w3m.git
```


- Commit your changes and push to your fork, eg. to fix an issue...


```Bash
cd ~/git/hub/paranoid-linux/torrific-w3m


git commit -F- <<'EOF'
:bug: Fixes #42 Issue


**Edits**


- `<SCRIPT-NAME>` script, fixes some bug reported in issue
EOF


git push fork main
```


> Note, the `-u` option may be used to set `fork` as the default remote, eg. _`git push fork main`_ however, this will also default the `fork` remote for pulling from too! Meaning that pulling updates from `origin` must be done explicitly, eg. _`git pull origin main`_


- Then on GitHub submit a Pull Request through the Web-UI, the URL syntax is _`https://github.com/<NAME>/<REPO>/pull/new/<BRANCH>`_


> Note; to decrease the chances of your Pull Request needing modifications before being accepted, please check the [dot-github](https://github.com/paranoid-linux/.github) repository for detailed contributing guidelines.


---


### Sponsor
  [heading__sponsor]:
  #sponsor
  "&#x1F4B1; Methods for financially supporting paranoid-linux that maintains torrific-w3m"


Thanks for even considering it!


With [![sponsor__shields_io__liberapay]][sponsor__link__liberapay] you may sponsor paranoid-linux on a repeating basis.


Regardless of if you're able to financially support projects such as torrific-w3m that paranoid-linux maintains, please consider sharing projects that are useful with others, because one of the goals of maintaining Open Source repositories is to provide value to the community.


______


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."


- [GitHub -- `github-utilities/make-readme`](https://github.com/github-utilities/make-readme)

- [CloudFlare -- Introducing DNS Resolver for Tor](https://blog.cloudflare.com/welcome-hidden-resolver/)

- [Qubes OS -- Reducing the fingerprint of text-based web browser W3M](https://www.qubes-os.org/doc/w3m/)

- [Qubes OS -- Onion -- Reducing the fingerprint of text-based web browser W3M](http://qubesosfasa4zl44o4tws22di6kepyzfeqv3tg4e3ztknltfxqrymdad.onion/doc/w3m/)

- [How to Geed -- How to browse from the Linux terminal with W3M](https://www.howtogeek.com/103574/how-to-browse-from-the-linux-terminal-with-w3m/)


______


## License
[heading__license]:
  #license
  "&#x2696; Legal side of Open Source"


```
Enables clear-net browsing over the Tor network via W3M web browser
Copyright (C) 2020 S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```


For further details review full length version of [AGPL-3.0][branch__current__license] License.



[branch__current__license]:
  /LICENSE
  "&#x2696; Full length version of AGPL-3.0 License"


[badge__commits__torrific_w3m__main]:
  https://img.shields.io/github/last-commit/paranoid-linux/torrific-w3m/main.svg

[commits__torrific_w3m__main]:
  https://github.com/paranoid-linux/torrific-w3m/commits/main
  "&#x1F4DD; History of changes on this branch"


[torrific_w3m__community]:
  https://github.com/paranoid-linux/torrific-w3m/community
  "&#x1F331; Dedicated to functioning code"


[issues__torrific_w3m]:
  https://github.com/paranoid-linux/torrific-w3m/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."

[torrific_w3m__fork_it]:
  https://github.com/paranoid-linux/torrific-w3m/
  "&#x1F531; Fork it!"

[pull_requests__torrific_w3m]:
  https://github.com/paranoid-linux/torrific-w3m/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"

[torrific_w3m__main__source_code]:
  https://github.com/paranoid-linux/torrific-w3m/
  "&#x2328; Project source!"

[badge__issues__torrific_w3m]:
  https://img.shields.io/github/issues/paranoid-linux/torrific-w3m.svg

[badge__pull_requests__torrific_w3m]:
  https://img.shields.io/github/issues-pr/paranoid-linux/torrific-w3m.svg

[badge__main__torrific_w3m__source_code]:
  https://img.shields.io/github/repo-size/paranoid-linux/torrific-w3m



[cloudflare__download]:
  https://developers.cloudflare.com/argo-tunnel/downloads


[sponsor__shields_io__liberapay]:
  https://img.shields.io/static/v1?logo=liberapay&label=Sponsor&message=paranoid-linux

[sponsor__link__liberapay]:
  https://liberapay.com/paranoid-linux
  "&#x1F4B1; Sponsor developments and projects that paranoid-linux maintains via Liberapay"

