**Environment Setup, Edit a file, create a new file, and clone from Bitbucket**

**This README would normally document whatever steps are necessary to get the application up and running.**

---

**This README would normally document whatever steps are necessary to get the application up and running.**

Things you may want to cover:

Ruby on Rail Settup

Database creation

Database initialization

......

---

## Ruby on Rail Settup

Set up ROR environment useing following, if you have ROR set up, please ignore!

https://drive.google.com/file/d/15rNl4YpbxhN1vcQ3YhDHnvoZ3uWWDKqY/view?usp=sharing

---

## Database Create

1. Open PgAdmin and create a new server using following setting:

	name: database
	
	host: 127.0.0.1
	
	port: 5432
	
	maintence database: postgres
	
	user: [the user name you setted up to login postgres]
	
	password: [the password you setted up to login postgres]
	
2. Now you are able to see your database visualized 
3. Create a new role: rails-demo, and garant all permit
4. Create a new database: rails-demo_development, and set the onwer to: rails-demo

---

## Database sync

Open terminal inside the ROR file folder and run following:

$ bundle install

$ rake db:setup

$ rails db:migrate

---

## Running Server:

$ rails sever

Login to http://0.0.0.0:3000/ in browser

---

## Clone a repository

Use these steps to clone from SourceTree, our client for using the repository command-line free. Cloning allows you to work on your files locally. If you don't yet have SourceTree, [download and install first](https://www.sourcetreeapp.com/). If you prefer to clone from the command line, see [Clone a repository](https://confluence.atlassian.com/x/4whODQ).

1. You’ll see the clone button under the **Source** heading. Click that button.
2. Now click **Check out in SourceTree**. You may need to create a SourceTree account or log in.
3. When you see the **Clone New** dialog in SourceTree, update the destination path and name if you’d like to and then click **Clone**.
4. Open the directory you just created to see your repository’s files.

Now that you're more familiar with your Bitbucket repository, go ahead and add a new file locally. You can [push your change back to Bitbucket with SourceTree](https://confluence.atlassian.com/x/iqyBMg), or you can [add, commit,](https://confluence.atlassian.com/x/8QhODQ) and [push from the command line](https://confluence.atlassian.com/x/NQ0zDQ).