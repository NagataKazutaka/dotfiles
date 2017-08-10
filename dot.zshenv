#補完時に無視する接尾辞
fignore=('~')

# coredumpファイルを吐かないようにする
#limit coredumpsize  0
limit maxproc 255  #40 is default
umask 022

export PAGER="lv -c"
export LV='-z -Ia -Ou8 -c'
export EDITOR='vim'

# locale
export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"
#export LC_CTYPE=C

export TERM=xterm-256color

# for screen
export SCREENDIR=~/.screens/

####  path / PATH
path=( ~/bin \
    $HOME/.rbenv/bin \
    /usr/local/bin /usr/local/sbin /usr/local/mysql/bin \
    /usr/local/mongodb/bin \
    /usr/local/cuda/bin \
    /opt/local/bin /opt/local/sbin \
    /bin /sbin /usr/bin /usr/sbin \
)

fpath=(~/.functions ~/.functions/zsh-completions ${fpath})

#list color
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS

# local settings
if [ -e $HOME/.zshlocalenv ]; then
    source $HOME/.zshlocalenv
fi;

export AWS_RDS_HOME=/Developer/aws/RDSCli
export AWS_CREDENTIAL_FILE=$AWS_RDS_HOME/credential-file-path.conf
export JAVA_HOME=/Library/Java/Home
export PATH=$AWS_RDS_HOME/bin:$PATH
export EC2_REGION=ap-northeast-1
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/mysql@5.6/bin:$PATH

