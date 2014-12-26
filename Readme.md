#README

###View The Demo App Here https://picsharedemo.herokuapp.com

###How To Deploy
-----------------
######Deploy As Development Mode
1.clone the repo
```
git clone https://github.com/perezkarjee/picshare.git
cd picshare
```
2.uncomment the 'sqlite3' gem on gemfile & comment the 'pg' gem.

3.delete database.yml on /config & rename '_sqlite_database.yml' to 'database.yml'.

4.run bundler
```
bundle install
```
5.migrate the DB
```
rake db:migrate
```
6.start the server
```
rails s
```
7.view the app in http://localhost:3000

please note: imagemagick should be installed for image processing to work.
after installing it, please provide it's path on /environments/development.rb

----------------

######How To Deploy On Heroku
(assuming, that you already have an heroku account & heroku toolbelt installed on your PC and
a AWS account & a amazon s3 bucket already setup as well)

1.clone the repo
```
git clone https://github.com/perezkarjee/picshare.git
cd picshare
```
2.create heroku app
```
heroku create myappname
```
3.Add config vars to use Amazon S3 for storage
```
heroku config:set AWS_ACCESS_KEY_ID=my_aws_access_key
heroku config:set AWS_SECRET_ACCESS_KEY=my_aws_secret_access_key
heroku config:set S3_BUCKET_NAME=my_s3_bucketname
```
4.add heroku postgres
```
heroku addons:add heroku-postgresql
```
5.push it to heroku
```
git push heroku master
```
6.migrate the DB
```
heroku run rake db:migrate
```
7.view the application in the browser
```
heroku open
```
