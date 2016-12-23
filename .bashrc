# .bashrc

# User specific aliases and functions

# プロンプト

export PS1="[\$(date '+%R:%S')] \u@\$ "

# カラー設定
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# lv -> less
alias lv='less'

# andyへのログイン
alias andy='ssh -l y-ozaki andy.ice.iiji.jp'

# hopgateへのログイン
alias hop='ssh -i /Users/ozaki/id_rsa -l y-ozaki hopgate03.sh.iiji.jp'

# vm-db1500へのログイン
alias vmdb='ssh -i /Users/ozaki/id_rsa -l y-ozaki -x -t hopgate03.iij.ad.jp /var/service/gate/bin/telssh -l vmadmin vm-db1500.hop.2iij.net'

# vm-slogへのログイン
alias vmslog='ssh -i /Users/ozaki/id_rsa -l y-ozaki -x -t hopgate03.iij.ad.jp /var/service/gate/bin/telssh -l vmadmin vm-slog300.hop.2iij.net'
# mtx-monへのログイン
alias mtxmon='ssh -i /Users/ozaki/id_rsa -l y-ozaki -x -t hopgate03.iij.ad.jp /var/service/gate/bin/telssh -l admin mtx-mon1500.hop.2iij.net'

# menush起動
alias menush='ssh -i /Users/ozaki/id_rsa -l y-ozaki -x -t hopgate03.iij.ad.jp /var/service/gate/bin/telssh -l vmope vm-set1500.hop.2iij.net'

# infstepへのログイン(そのうち廃止)
alias infstep='ssh i1693@inf-step1.ssp.iiji.jp'

# lcsetへのログイン
alias lcset='ssh -i /Users/ozaki/id_rsa -l y-ozaki -x -t hopgate03.iij.ad.jp /var/service/gate/bin/telssh -P sup -l lcsup -I lcset30.hop.2iij.net'

# giodeli-ut000へのログイン
alias giodeli='ssh -l y-ozaki gioc-deli-ut000.ice.iiji.jp'

# hopgate(開発環境)へのログイン 
alias hopdev='ssh -i /Users/ozaki/id_rsa -l y-ozaki hopgate4103.sh.iiji.jp'

# LGSへのログイン
alias lgs='ssh -l y-ozaki lgs-agw.ssp.iiji.jp'

# mskaへのログイン(そのうち廃止)
alias komai='ssh -l y-ozaki komai.ice.iiji.jp'

# うっかりログアウト抑止
set -o ignoreeof

# python install
# http://blog.sotm.jp/2014/01/09/Installing-pyenv-virtualenv-rbenv-gemse-plenv-pmset-on-MacOSX-109/

if which pyenv > /dev/null; then
    export PYENV_ROOT="${HOME}/.pyenv"
    export PATH=${PYENV_ROOT}/shims:${PATH}
    eval "$(pyenv init -)";
fi
