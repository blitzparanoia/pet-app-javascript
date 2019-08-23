# Pet Job Board App
A Rails app for posting animal related jobs and reviewing the company.

## Installaton
1. `cd petwatcher'
2. Use `bundle install` to install dependencies.
3. To create the database type `rails db:migrate`
4. Type `rails s` to launch a local server.
5. In the browser of your choice visit `http://localhost:3000`
6. End the server session at anytime by pressing `ctrl-c`

## Usage
User can sign up, login into an existing account or use Facebook to sign in.

Once signed in the list of open job postings are displayed. User can click the name of the posting to view more information.
If the user is the creator of the posting they have the abilty to edit or delete the posting. A user can review and rate a company. 

All postings from all users can be viewed. All company reviews for all users can be viewed.


## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/blitzparanoia/pet-app.

## License
The gem is available as open source under the terms of the  [MIT License](https://opensource.org/licenses/MIT).
