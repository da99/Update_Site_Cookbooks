
Update\_Site\_Cookbooks
================

If you use git and "knife cookbook site": you can use this
gem to update (aka re-download) your site cookbooks 
to their latest versions.  It uses your git branch names
that begin with "chef-vender-" to determine which 
cookbooks to download.

Installation
------------

    gem 'Update_Site_Cookbooks'

Usage
------

One way:

    git branch chef-vendor-openssh
    Update_Site_Cookbooks

Another way:

    knife cookbook site install openssh
    knife cookbook site install nginx
    knife cookbook site install varnish
    Update_Site_Cookbooks

Run Tests
---------

    git clone git@github.com:da99/Update_Site_Cookbooks.git
    cd Update_Site_Cookbooks
    bundle update
    bundle exec bacon spec/main.rb

"I hate writing."
-----------------------------

If you know of existing software that makes the above redundant,
please tell me. The last thing I want to do is maintain code.

