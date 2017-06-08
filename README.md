WordPress Bash Scripts
======================

db-sync.sh
======================

Downloads a copy of an .sql file to your local machine, and replaces the current database with it using WP_CLI.

Note that is doesn't create the remote .sql or handle the uploads folder - just the database


switchSVN
======================

Quickly switch between installed SVN versions using brew to link and unlink the files appropriate files
Requires brew and assumes subversion 1.8 and 1.7 are available.

Not strictly WordPress related but helpful as Core uses a different version of SVN than VIP.

Usage : `switchSVN 18`


apply-patch
======================
Apply a patch from trac.
Pretty much a copy of the utility tool found here - http://scribu.net/wordpress/contributing-to-wordpress-using-github.html with some added output and error message.
 
All credit to scribu!

usage `apply-patch https://core.trac.wordpress.org/attachment/ticket/40947/nav-menu.patch`