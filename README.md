1. Set up a ruby version with rbenv or rvm
2. run bundle install.
3. Create a file in the app root called secret.yml

```
user: yourusername
pass: yourpassword
```


use the following to start the app
```
gollum --config auth.rb

or use the handy shortcut, ( ./run  )
```

It might be able to be run as a rack app as well, you may need to do some research if you'd like to set that up.



All credit for this little project goes to the awesome creators of gollum and stackoverflow user "vigntom"

For more info:

https://github.com/gollum/gollum

Thanks, vigntom!

http://stackoverflow.com/questions/9634703/strong-access-control-for-gollum

