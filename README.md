# Hot Reads (a service of URLockBox)
This is part of the final assessment for Mod 4 at Turing School in Denver. This application, called Hot reads, is the service for the main application. Hot Reads can be found on [GitHub](https://github.com/jk1dd/hot_reads) or live on [Heroku](https://fathomless-basin-91014.herokuapp.com/).
It is built in Rails 5.0, tested with [Rspec](https://github.com/rspec/rspec-rails) and [Selenium](https://rubygems.org/gems/selenium-webdriver/versions/2.48.1).

A visitor can see the top read links of the last 24 hours, based on the behavior of the users in URLockBox (which can be found live [here](https://stark-meadow-35466.herokuapp.com/))!

## Getting Started

To get the project up and running, simply:
```
git clone https://github.com/jk1dd/hot_reads.git
cd hot_reads
bundle
rake db:create
rake db:migrate
```
and visit `localhost:3000` to see the app in development. If URLockBox is already running on 3000, `rails s -p 3001` should take care of that.


## Authors

Jonathan Kidd


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
