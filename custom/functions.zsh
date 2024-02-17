hello(){
  if [ -n "$1" ]
  then
    print Hello "$1"
  else
    print 'Hello world!'
  fi
}

push() {
  print 'custom zsh function to push all new changes'
  git add .
  if [ "$1" != "" ] # or better, if [ -n "$1" ]
  then
    git commit -m "$1"
  else
    git commit -m "update"
  fi
  git push
}

serve() {
  sleep 2 && ff http://localhost:8000/ & php -S localhost:8000
}

serveFlask() {
  chrome http://localhost:5000/
  flask --app app.py --debug run
}

mov2gif() {
  FILE=$1
  NAME=`echo $FILE | cut -d'.' -f1`
  echo $NAME
  # echo "Ok! Ready to make a gif of $FILE"
  # read -p "Set width in px, or -1 for auto " WIDTH
  echo "set framerate"
  read RATE
  echo "Set width in px, or -1 for auto"
  read WIDTH
  echo "Set height in px, or -1 for auto"
  read HEIGHT

  echo "${WIDTH} and ${HEIGHT}"
  ffmpeg -i $FILE  -pix_fmt rgb8 -r $RATE  -vf scale=$WIDTH:$HEIGHT $NAME.gif && gifsicle -O3 $NAME.gif -o $NAME.gif
}
