<!-- As a <Stakeholder>,
So that <Motivation>,
I'd like <Task>. -->

### User Story 1

As someone who likes to use bookmarks,
So that I can keep track of my most visited websites,
I'd like to see a list of bookmarks

| Nouns     | Verbs                  |
| --------- | ---------------------- |
| Someone   | Likes to use           |
| Bookmarks | Show                   |
| Websites  | Keep track of, visited |

BROWSWER (CLIENT) ----> CONTROLLER ----> MODEL -----> VIEW ----> BROWSER (CLIENT)
/bookmarks --> app.rb <--> bookmarks.rb --> bookmarks.erb --> /bookmarks

![image](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png?raw=true)

| Component  | Responsibility                              | Refactor                              |
| ---------- | ------------------------------------------- | ------------------------------------- |
| Model      | Encapsulate logic with relevant data        | Encapsulate bookmark data in a class  |
| View       | Display the result to a user                | Show the bookmark data in a list      |
| Controller | Get data from the model and put in the view | Render bookmark data into to the view |

### User Story 2

As someone who likes to use bookmarks,
So that I can update my list of my fave websites,
I'd like to add new bookmarks to my list of bookmarks.

| Nouns | Verbs                                  |
| ----- | -------------------------------------- |
| User  | Add new bookmarks to list of bookmarks |

### User Story 3

As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark

| Nouns | Verbs                                 |
| ----- | ------------------------------------- |
| User  | Delete bookmarks to list of bookmarks |

### User Story 4

As a user,
So I can update my bookmarks,
I want to update my bookmarks.

| Nouns | Verbs                                     |
| ----- | ----------------------------------------- |
| User  | Update bookmarks in the list of bookmarks |
