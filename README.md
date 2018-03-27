## Skeleton for test automation projects

This project is intended to work with Firefox plugin Katalon automation recorder, selecting the option export tests as Rspec.

### How to use it

* Install Ruby
  - We recommend using Rbenv and latest ruby version
  - Install bundler gem `gem install bundler`
* Necesary drivers
  - Chrome: ChromeDriver `brew install chromedriver`
  - Firefox: geckodriver `brew install geckodriver`
* Clone the project and run `bundle install` to install dependencies
* Record our test case using Kakalon automation recorder
* Click Export button
* Chose Ruby (webdriver + RSpec)
* Copy the generated code
* Create a new file in `spec/features/group_of_test/new_file_spec.rb` (Must end in `_spec.rb`) duplicating `spec/templates/basic_spec.rb` file
* Paste the code inside the `it` block in your new file test, copying the example file from `spec/features/examples/googel_spec.rb`
* Run it `bundle exec rspec`

