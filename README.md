muskoxchallenge
===============

MuskoxChallenge.com is a small project I work on in my spare time. I realized I wasn't going to get anywhere on it alone so I open sourced it.



Vagrant Setup
=============

I borrowed heavily from [here](https://gorails.com/guides/using-vagrant-for-rails-development)

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-librarian-chef
vagrant plugin install vagrant-omnibus
```

Facebook App Credentials
------------------------

in your .bashrc

```
export FACEBOOK_APP_ID="YOUR_APP_ID_HERE"
export FACEBOOK_SECRET="YOUR_SECRET_KEY_HERE"
