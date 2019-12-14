My Precious

Good start for a simple password protected, git based wiki for knowledge sharing within a company or teams


Dec 2019 - updated for use with modern ruby


1. rbenv - ruby version 2.6.3
2. mac os install steps
 - brew install icu4c
 - gem install charlock_holmes -- --with-icu-dir=/usr/local/opt/icu4c
 - gem install gollum
3. Create a file in the app root called secret.yml

```
user: yourusername
pass: yourpassword
```


4. use the following to start the app
```
gollum --config auth.rb

or use the handy shortcut, ( ./run  )
```

For more info on Gollum:

https://github.com/gollum/gollum

