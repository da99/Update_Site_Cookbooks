
Update\_Site\_Cookbooks
================


This gem automates updating all your cookbooks installed with: 
"knife cookbook site install NAME".

Implementation
==============

It uses your git branch names
that begin with "chef-vender-" to determine which 
cookbooks to download.  

All the code is in one page: 
[https://github.com/da99/Update\_Site\_Cookbooks/blob/master/bin/Update\_Site\_Cookbooks](https://github.com/da99/Update_Site_Cookbooks/blob/master/bin/Update_Site_Cookbooks)

Installation
------------

    gem install Update_Site_Cookbooks

Usage
------

On your command line:

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

