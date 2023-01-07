# Oxbury_Bank_Tech_Challange

This is a technical task for Oxbury Bank

## Getting Started

To run this project you need to have at least iOS 13 and above. 

### Information about the project

I've built the project by using MVC framework and added clean architecture pattern

It allows code to be more readable and accessible for Unit Testings, etc. 

Clean Architecture separetes models, use cases, entities and controllers.

Clean Architecture allows us to initialize models, views, loggers(Firebase Analytics, Crashlytics and etc), localization(different countries) into views by using dependency injection 

#### Information about the project

The app will pull data from API - "https://api.punkapi.com/v2/beers" and will show all relevant information on BeersViewController. 

I've created a function called getBeers with a completion handler to make sure we are catching the errors by using Result and defining my errors. As well as i've tried to save core data whenever completion is successful in getBeers function but didn't succeed because it doesn't want to write data in CoreData. All the code related to Core Data is commented out. 

UI was built by using UIKit and a bit of programmatical UI. Views could be simplified by using reusable views for places such as NavBars , back/close buttons, etc but it is out of the scope of the requirements. 

URL's will allow us to use bseURL all the time instead of creating a reference for it each time the API call is made. Meaning that we don't need to define AF.request("https://api.punkapi.com/v2/beers"), instead, we can just use AF.request(""\(URLs.baseURL)/beers""). 

BeerViewController which is embedded in TabBarViewController will show all the beers from the API described above and its data will be assigned to empty beerArray which is used in tableView to display data and pass specific beer into the next view controller - BeerInfoViewController. 

BeerInfoViewController will display all the information regarding the beer passed from the previous view controller by using the didSelectRow method in tableViewDelegate, to make sure we are getting the correct beer I've initialized beer into BeerInfoViewControlelr and displayed its data on the view controller. 

UI was built by using ScrollView + UIView to make it more resizable on various screen sizes such as iPhone 8. 

I didn't manage to write Unit tests because I am not familiar with them.
