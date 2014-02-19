#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vi="vim"
alias g="python /home/jamac/Software/goagent/goagent-goagent-b4855c3/local/proxy.py"
alias ll="ls -l --color='auto'"
alias grep="grep --color='auto'"
alias docm="cd /opt/lampp/htdocs/DocManager/"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
export COCOS2DX_ROOT=/home/jamac/Developer/cocos2d-x-2.2/
export NDK_ROOT=/home/jamac/Developer/android/android-ndk-r9c
export ANT_ROOT=/home/jamac/Developer/android/apache-ant-1.9.3/bin/
export ADB_PATH=/home/jamac/Developer/android/adt-bundle-linux-x86-20131030/sdk/platform-tools/
export ANDROID_SDK=/home/jamac/Developer/android/adt-bundle-linux-x86-20131030/sdk/
export JAVA_HOME=/home/jamac/Developer/java/jdk1.7.0_15
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
export PATH=$PATH:$ANT_ROOT:$ADB_PATH:$ANDROID_SDK/tools:$JAVA_HOME/bin:$JAVA_HOME/jre/bin

#SHELLBIN目录用于放置自己常用的可执行shell脚本程序
SHELLBIN=/home/jamac/Developer/shellbin
export PATH=$PATH:$SHELLBIN
