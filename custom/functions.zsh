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
  chrome http://localhost:8000/
  php -S localhost:8000
}

serveFlask() {
  chrome http://localhost:5000/
  flask --app app.py --debug run 
}

