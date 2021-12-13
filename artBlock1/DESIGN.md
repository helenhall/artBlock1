
DESIGN.MD for ArtBlock - Helen Hall - CS50 Final Project

A “design document” for your project in the form of a Markdown file called DESIGN.md that discusses, technically, how you implemented your project and why you made the design decisions you did. Your design document should be at least several paragraphs in length. Whereas your documentation is meant to be a user’s manual, consider your design document your opportunity to give the staff a technical tour of your project underneath its hood.

Similar to the read me, I will go through each page to explain my design decisions.

Overall App Format:
    To start, I began my app knowing I would want both navigation views and tab views, whose layout can be seen in the ContentView file. While setting up this file, I realized that it would be best to have multiple SwiftUI View files all imbedded in the ContentView file. From there, I edited the specific files themselves. 
    Also, I really wanted a distinctive navigation bar with my app name, which I styled in the files NavigationBarView and LogoView where I put together the logo and icons in a horizontal stack to make the proposed layout. Then in each view, I placed the NavBarView() and styled it further to make it fit the page. This appears on every page to add cohesion to the app.
    In the tab bar, I used icons that would infer the meaning such as home, lightbulb for ideas, timer for progress, and person for gallery as in your own personal work. In future iterations, that would also serve as the profile. 
1. Home Page: in the HomeView2 file, you can see the NavigationBarView() first. Then I implemented a navigation and scroll view to hold the page's contents so the user could easily scroll. Then, I used horizontal scrolling as I believed it would be more effective and bring dimension to the app. I decided to use bright colors like yellow, blue, and red for the backgrounds to make the images displayed pop and differentiate each section from eachother while seemingly combining the images from the same section. I also wanted to make sure the home page had images linked so it wasn't all text. The big titles outside of the horizontal scroll views help to break up the coloring and distinguish each section. 

    The Home Page itself really hopes to give users quick access and the ability to switch between recent content without going through the whole app. And, with this page they can keep track of what they've worked on recently and what section they may want to add to. 
    
    2. The ideas page:
    The ideas page is really the heart of the app where the future projects and future finished works are created. In the ideal app, these projects could move through the app features (ex. when you decide to start working, when you finish), but that functionality was not possible in this time. The example ideas show the main things the user would do - add specific ideas to two or three projects or add random ideas to a miscellaneous folder. When you click on the idea folder, you see the full list of ideas, where users could continue adding their inspiration. 
    Functionality wise, the ideas tab starts on the IdeasView file. There, I set up a navigation view and listed folders using the myNotes file and the FolderCell structure defined under the view. The MyNotes file creates an observable object that is used in many of my views including a published variable folders which holds an array. When a new folder is added, the save button appends this folder to this array, creating the overall function. 
    The IdeasView2 file shows the structure of the ideas when you click on a project on the previous view. It takes in a projectname from the previous view and uses that to set up the navigation title. This View uses the strategy of changing the listViewModel document. This list view model has a published array notes with a note model (from the myNotes file) and defines fnctions for getting, deleting, adding, and moving notes. 
    
    3. Progress: 
    The progress page once again implements bright colors to distinguish the works and make them pop. It is set up in a scroll view and each work is actually a navigation view. When clicked, it sends information of the work to an template view called AddNoteView. It also at the bottom drops in the galleryview2 which handles the uploading of images using the ImagePicker file. 
    When you click on the work, it opens the AddNoteView file which actually uses Core Data. Core Data is housed in the FolderContainer.xcdatamodel file which shows a NoteEntity. This view lists out all saved entities and adds notes to the CoreData when the save btuton is pressed. 
    
    4. Gallery:
    Finally, the gallery page has all finished works in a vertical scroll view. The page itself is the GalleryView3 file They have the same background color for cohesion as one body of work. They also have their title displayed. When you click on one, it loads the CircleNumberView actually at the bottom of this same file. This is a template view that takes in all of the necessary information about the works passed by the previous view. 
     

    
