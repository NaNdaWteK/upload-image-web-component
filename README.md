# Tested Upload Files Web Component

This is a polymer web component than uploads a image into determinate folder

## CONFIGURE LOCAL SYSTEM

* Install of Ruby 2.4.0, Ruby-dev and Ruby-rack:
* Visit nokogiri page ( http://www.nokogiri.org/tutorials/installing_nokogiri.html ) and install dependencies, in debian/ubuntu:
* Install chromedriver (webdriver):
* For automation system gem installation use bundler gem and install gems running: `bundle install --path vendor/bundle`

## For run test run Rake:

`bundle exec rake`

That will raise the web in your localhost:4567

Then in other terminal you can run the bdd tests with:

`bundle exec rake bdd`

To run specific test you can do it like this:

`bundle exec rspec -e 'any word of the test title'`
