muskoxchallenge
===============

MuskoxChallenge.com is a small project I work on in my spare time. I realized I wasn't going to get anywhere on it alone so I open sourced it.



Vagrant Setup
=============

Install vagrant and virtualbox.

I borrowed heavily from [here](https://gorails.com/guides/using-vagrant-for-rails-development)

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-librarian-chef
vagrant plugin install vagrant-omnibus
```

With the above done:
```
vagrant up
vagrant ssh  # now you are on the vagrant vm
cd /vagrant
bundle install
exit # leave vagrant
vagrant ssh
cd /vagrant
rake db:create
rake db:migrate
bundle exec rails s
```

Check the app
-------------
The app should be running on http://192.168.88.33:3000


Facebook App Credentials
------------------------

The main page in the app will load but the facebook login needs two more things to work.

in your .bashrc

```
export FACEBOOK_APP_ID="YOUR_APP_ID_HERE"
export FACEBOOK_SECRET="YOUR_SECRET_KEY_HERE"
```

Your facebook app developer account requires the domain name match their records. You cannot use localhost, you must use a top level domain you control.

One easy way to do this on your Mac is handled [here](http://www.makeuseof.com/tag/how-to-edit-the-mac-os-x-hosts-file-and-why-you-might-want-to/)

```
sudo /etc/hosts
# add the line 
# 192.168.88.33	DOMAIN_YOU_CONTROL.com
```

This will allow you to use the facebook login.

