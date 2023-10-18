# Lab Report 2 - VSCode and Your Local Machine (Week 3)

## Part 1

### StringServer.java

![StringServer.java](./images/Screenshot%202023-10-18%20at%2010.06.45%20AM.png)

### `/add-message?s=Hello`

![add-message1](./images/Screenshot%202023-10-18%20at%2010.07.37%20AM.png)

The methods called in the code include the standard methods such as `main`, `System.out.println`, `Integer.parseInt`, `Server.start` to get the server running.
Then when the the first request is sentm the `handleRequest` method is run from the Handler class.

The `numOfRequests` field keeps track of how many successful requests have been handled.

Then, `url.getPath().equals("/")` method is ran and returns false. The `"/"` is the relevant argument here as it check to see if we are at the 'root' or 'home' of the server.
Then the `url.getPath().contains.("/add-message")` method is ran and returns true. The `"/add-message"` is the relevant argument as this check if we want to add messages to the mainString.

Then the `url.getQuery().split("=")` method is ran to create an array of the parameters. The `"="` is the relevant argument as we want to seperate the query from the parameters given.
Then the `parameters[0].equals("s")` method is ran, which returns true.

The relevant argument is the `"s"` as this tells that we want to add a string.
Then the `numOfRequests` value is incremented.

Then the `mainString.append()` method is ran to add each parameter into the mainString. The relevant argument is that `String.format("%d. ", numofRequests)` as this is how we want to format and append the paremeters into the mainString. The `numOfRequests` value is used to keep track of how many strings are in our list.
Then the `mainString.append("/")` is ran again to add a new line.

Finally the `mainString.toString()` method is ran to return a string of mainString.

### `/add-message?s=How are you`

![add-message2](./images/Screenshot%202023-10-18%20at%2010.07.59%20AM.png)

This is very similar to the first request, with the only real difference being that the loop on line 17 is ran multiple times as there are multiple words in this string.

The methods called in the code include the standard methods such as `main`, `System.out.println`, `Integer.parseInt`, `Server.start` to get the server running.
Then when the the first request is sentm the `handleRequest` method is run from the Handler class.

The `numOfRequests` field keeps track of how many successful requests have been handled.

Then, `url.getPath().equals("/")` method is ran and returns false. The `"/"` is the relevant argument here as it check to see if we are at the 'root' or 'home' of the server.
Then the `url.getPath().contains.("/add-message")` method is ran and returns true. The `"/add-message"` is the relevant argument as this check if we want to add messages to the mainString.

Then the `url.getQuery().split("=")` method is ran to create an array of the parameters. The `"="` is the relevant argument as we want to seperate the query from the parameters given.
Then the `parameters[0].equals("s")` method is ran, which returns true.

The relevant argument is the `"s"` as this tells that we want to add a string.
Then the `numOfRequests` value is incremented.

Then the `mainString.append()` method is ran to add each parameter into the mainString. The relevant argument is that `String.format("%d. ", numofRequests)` as this is how we want to format and append the paremeters into the mainString. The `numOfRequests` value is used to keep track of how many strings are in our list. Since there are more than one parameter in this argument, The loops iterates a multiple number of times to append each word onto the list.
Then the `mainString.append("/")` is ran again to add a new line.

Finally the `mainString.toString()` method is ran to return a string of mainString.

## Part 2

- The path to the private key for your SSH key for logging into ieng6 (on your computer or on the home directory of the lab computer):
  ![image](./images/Screenshot%202023-10-18%20at%2010.59.41%20AM.png)

- The path to the public key for your SSH key for logging into ieng6 (within your account on ieng6):
  ![image](./images/Screenshot%202023-10-18%20at%2011.01.03%20AM.png)

- A terminal interaction where you log into ieng6 with your course-specific account without being asked for a password:
  ![image](./images/Screenshot%202023-10-18%20at%2011.01.40%20AM.png)

## Part 3

Something I learn in week 2 and 3: Using javac and java in the terminal has gotten much more ingrained in my muscle memory. Also learning how to use markdown to create pages has been incredibly useful.
