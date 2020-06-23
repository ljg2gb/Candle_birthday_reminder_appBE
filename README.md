# Candle - A Birthday Reminder App

I'm terrible at remembering my friends' birthdays so I built Candle to help me rememeber. It allows the user to add their friend's birthday and gives reminders about who has a birthday this month. I hope to eventaully encorporate push notifications and automated emails to make the platform more user-friendly when it's deployed. 

This was a four-day-long project built with a React JS frontend and a Ruby on Rails backend.

I created this project to learn React JS and work on my Sass styling. This was also my first project that dealt with time: the app is built to calculate and store date-of-birth from user data and recalculate age on the front-end so the current age is always displayed correctly. The biggest challenge I overcame from this project was implementing Auth and React private routes to protect and display user-specific information.

## How the app works
* To run the app, first fork and clone down this repo to your local device. 
* Note you will also need to clone down the frontend repo at 
   * https://github.com/ljg2gb/Candle_birthday_reminder_app

* Once you have the backend server running (run `rails s`), you can go into the frontend repo you cloned down, and in another terminal tab type `npm install` and then `npm start`. This will prompt the application to start. 


* From there you can navigate through the site.

   * You can login or signup
   
   * Add birthdays as a user
   
   * See all birthday's you've added and if any birthdays are happening this month
   
   * Delete birthday from the list

   * Logout

## Technologies
* React JS
* Sass
* Ruby on Rails

## Goals
* Add customizable notifications. (example: The app allows a user to send a combination of reminders 1 month, 1 week, and 1 day before their friend's birthday)

## Author
* Lydia Gregory