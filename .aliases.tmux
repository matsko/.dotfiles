# TMUX-specific aliases
function tc {
  PROJECT_NAME="$1"
  if [ -z "$PROJECT_NAME" ]; then
    PROJECT_NAME="default"
  fi
  PROJECT_DIR="$PROJECTS_HOME"
  vim "$PROJECT_DIR/.$PROJECT_NAME.tmux"
}

function t {
  PROJECT_NAME="$1"
  if [ -z "$PROJECT_NAME" ]; then
    PROJECT_NAME="default"
  fi
  tmux has-session -t $PROJECT_NAME 2>/dev/null
  if [ $? != 0 ]; then
    tmux-boot $PROJECT_NAME
  fi
  tmux attach-session -t $PROJECT_NAME
}

function tmux-boot {
  PROJECT_NAME="$1"
  PROJECT_DIR="$PROJECTS_HOME"
  if [[ -d "$PROJECT_DIR" ]]; then
    cd $PROJECT_DIR
    TMUX_FILE="$PROJECT_DIR/.$PROJECT_NAME.tmux"
    if [[ -f $TMUX_FILE ]]; then
      echo "loading $TMUX_FILE"
      export TMUX_SESSION_NAME="$PROJECT_NAME"
      source $TMUX_FILE
      export TMUX_SESSION_NAME=""
    else
      echo ".$PROJECT_NAME.tmux does not exist in $PROJECT_DIR"
    fi
  else
    echo "$PROJECT_DIR does not exist"
  fi
}

alias tmux-halt="tmux kill-session -s"
