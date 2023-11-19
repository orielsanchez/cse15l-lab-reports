# Lab Report 4 - Vim

### Log into ieng6

I typed `bash ieng6.sh<enter>`. I was automically logged in as I had already stored my public ssh key onto the ieng6 server.

![ieng6.sh login](./images/Screenshot%202023-11-18%20at%202.34.20 PM.png)

### Clone repo

I typed `git clone git@github.com:orielsanchez/lab7.git<enter>`.

![git clone](./images/Screenshot%202023-11-18%20at%203.55.02 PM.png)

Then I typed `cd lab7<enter>` to change my directory into the newly cloned lab7 directory.

After that I typed `ls<enter>` to see what files were in the directory. Once I saw that there was a `test.sh` file, I typed `bash test.sh<enter>` to run the tests. One out of two tests failed.

![tests.sh](./images/Screenshot%202023-11-18%20at%203.57.06 PM.png)

I then typed `<shift>gkkkkkkwcwindex2<esc>:w`,
which went to the bottom of the file, went up to the line I needed to edit,
moved to the word I needed to edit.
`cw` changes the word, where I changed to to index2, then escaped insert mode
and saved with the last command `:w`.

![vim edit](./images/Screenshot%202023-11-18%20at%204.12.04 PM.png)

I then exited vim with `:q`. I then pressed `<up><up>` to move up to the
`bash test.sh<enter>` command in the history to rerun the tests.

![test success](./images/Screenshot%202023-11-18%20at%204.15.55 PM.png)

I then typed `git add ListExamples.java<enter>` to stage the newly modified file.
After which I checked to make sure the status of my changes were what I wanted,
by typing `git status<enter>`.
After that I commited my changes by typing `git commit -m "test fix"<enter>`.
Finally I pushed my changes to the remote git repo by typing `git push`.

![commit and push](./images/Screenshot%202023-11-18%20at%204.24.04 PM.png)
