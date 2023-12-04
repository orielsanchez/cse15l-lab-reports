# Lab Report 5 - Putting It All Together

## Part 1 - Debugging Scenario

### Debugging Scenario on EdStem

#### Original Post by Student

---

**Title:** Issue with File Reading in Java Program

**Body:**
Hi everyone,

I'm having trouble with my Java program that's supposed to read a file. I've attached a screenshot of the terminal output after running my bash script (`run.sh`). It keeps saying "File not found: ../data.txt", but I'm pretty sure the file is in the right place. Here's what I tried:

- Checked the file path in the Java code.
- Made sure `data.txt` exists in the same directory as `Main.java`.

Any ideas on what might be going wrong?

**Screenshot:**
![Terminal Output](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.26.44 PM.png)

---

#### Response from TA

---

**Title:** Re: Issue with File Reading in Java Program

**Body:**
Hi,

From your description, it sounds like a path issue. Could you run `ls -l` in the directory where you execute `run.sh` and share the output? This will help us understand the file structure and confirm the location of `data.txt`.

---

#### Follow-up Post by Student

---

**Title:** Re: Issue with File Reading in Java Program

**Body:**
Thanks for the suggestion! I ran `ls -l`, and here's what I got:

![ls -l screenshot](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.27.20 PM.png)

It seems `data.txt` is not in the list. I guess it's not in the correct directory. I placed it under `src`, where my Java file is.

Changing the file path in `run.sh` from `../data.txt` to `./data.txt` seems to fix this. Thank you!

![success](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.28.33 PM.png)

---

### Debugging Information

- **File & Directory Structure:**

  - debug_scenario/
    - `run.sh` (Bash script to run Java program)
    - `src/`
      - `Main.java` (Java program)
      - `data.txt` (Text file to be read)

- **Contents of Each File Before Fixing the Bug:**

  - `Main.java` contains code to read a file and print its contents.
    ![Main.java](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.30.57 PM.png)
  - `run.sh` incorrectly assumes `data.txt` is in the same directory as `run.sh`.
    ![run.sh](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.29.39 PM.png)
  - `data.txt` Text file to be read
    ![data.txt](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.31.29 PM.png)

- **Command Line Used:**

  - To trigger the bug: `bash run.sh`

- **Fix for the Bug:**

  - Change the file path in `run.sh` from `../data.txt` to `./data.txt`.

  ![fixedrun.sh](./debug_scenario/screenshots/Screenshot%202023-12-03%20at%2012.29.54 PM.png)

## Part 2 - Reflection

During my lab experience, I learned about about this really cool terminal shortcut that swaps 2 characters by pressing `ctrl+t`. I don't see very many uses, but it's good to know in case I ever need to use it someday.
