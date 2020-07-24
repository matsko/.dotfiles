function tc {
  PROJECT_NAME="$1"
  PROJECT_DIR="$PROJECTS_HOME"
  if [ -z "$PROJECT_NAME" ] || [ "$PROJECT_NAME" = "default" ]; then
    PROJECT_NAME="default"
  else
    PROJECT_DIR="$PROJECTS_HOME/$PROJECT_NAME"
  fi
  vim "$PROJECT_DIR/.tmux"
}

function t {
  PROJECT_NAME="$1"
  PROJECT_DIR="$PROJECTS_HOME"
  if [ -z "$PROJECT_NAME" ] || [ "$PROJECT_NAME" = "default" ]; then
    PROJECT_NAME="default"
  else
    PROJECT_DIR="$PROJECTS_HOME/$PROJECT_NAME"
  fi

  echo $PROJECT_DIR
  tmux has-session -t $PROJECT_NAME 2>/dev/null
  if [ $? != 0 ]; then
    tmux-boot $PROJECT_NAME
  fi
  tmux attach-session -t $PROJECT_NAME
}

function tmux-boot {
  PROJECT_NAME="$1"
  if [[ $PROJECT_NAME = "default" ]]; then
    PROJECT_DIR="$PROJECTS_HOME"
  else
    PROJECT_DIR="$PROJECTS_HOME/$PROJECT_NAME"
  fi
  if [[ -d "$PROJECT_DIR" ]]; then
    cd $PROJECT_DIR
    TMUX_FILE="$PROJECT_DIR/.tmux"
    if [[ -f $TMUX_FILE ]]; then
      echo "loading $TMUX_FILE"
      export TMUX_SESSION_NAME="$PROJECT_NAME"
      source $TMUX_FILE
      export TMUX_SESSION_NAME=""
    else
      echo ".tmux does not exist in $PROJECT_DIR"
    fi
  else
    echo "$PROJECT_DIR does not exist"
  fi
}

alias tmux-halt="tmux kill-session -s"
