#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
 
# Epoch time conversion
epoch() {
  TESTREG="[\d{10}]"
  if [[ "$1" =~ $TESTREG ]]; then
    # is epoch
    date -d @$*
  else
    # is date
    if [ $# -gt 0 ]; then
      date +%s --date="$*"
    else
      date +%s
    fi
  fi
}

PS1='[\W] -> '

export PERL_LOCAL_LIB_ROOT="/home/drew/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/home/drew/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/home/drew/perl5";
export PERL5LIB="/home/drew/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/drew/perl5/bin:/opt/android-sdk/tools/:/opt/java/bin/:/opt/cuda/include/:$PATH";
export JAVA_HOME="/opt/java";
export JDK_HOME="/opt/java";
export STUDIO_HOME="/opt/java";
export EDITOR="vim";

HISTIGNORE="cd:ls:ll:dir:clear:exit";
export MOZILLA_FIVE_HOME=/usr/lib/mozilla;
export ANDROID_NDK=/opt/android-ndk;
