ParkWhiz Interview Project (Rails)
===============

The last thing ParkWhiz wants to do is sell a parking spot that doesn't exist, so tracking inventory and scheduling parking stays is an important part of the app. 

The technical portion of the interview will anchor on a small scheduling site you will create beforehand.  This project will be the focal point of a Q&A session, and the foundation for a group project you will work on with part of the development team. 

Plan to spend 1-2 hours on this project. Please send your project to interview-project@parkwhiz.com prior to your interview.

Requirements
============

Your app will provide 2 pages:

* The *Driver* page allows drivers to enter a range of time in which they’d like to park.  The page then indicates whether parking is available, and if so, shows the price and allows them to book the time period. 

(NOTE: SAMPLE PAGES ARE PROVIDED IN PUBLIC FOLDER, PLEASE USE THEM FOR YOUR VIEWS)

The repository provides sample markup in the `public` directory. Additionally it serves as a skeleton Rails app and includes some basic models, a starting database schema, and seed data. Please use this as a starting point to create your app. 

1) Create a driver page and wire functionality in it

After creating the inital models we thought of some specific changes we'd like to see as well:

2) Implement a location model to represent a parking facility.  `name` and `address` fields are all that are required.  Refactor the Listing model accordingly.

3) Implement a seller model to represent the company that owns or operates the parking location. A `name` attribute is all that is required. Refactor the Listing model accordingly.

Feel free to make any additional changes you'd like.

4) Keep in mind that accuracy is extremely important. Please ensure your app performs as expected, or (if you run out of time) that the areas in which it is not yet complete are clear.

Some additional guidelines:
===========================

* Parking is available for a price if the maximum number of simultaneous bookings within the requested time period is less than the availability for that price
* You do not need to provide authentication or authorization
* No checkout process (real or simulated) is required. After searching, the driver can simply book by clicking “Book now”

Make any assumptions you feel are reasonable, just be prepared to talk through them.  If you have any questions email interview-project@parkwhiz.com.

