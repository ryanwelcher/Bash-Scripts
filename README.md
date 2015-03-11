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

Usage : `switchSVN 18`