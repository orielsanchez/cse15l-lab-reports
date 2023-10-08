# Lab Report 1 - Remote Access and Filesystem (Week 1)

## cd
### No argument
```zsh
[user@sahara ~/lecture1/messages]$ cd
[user@sahara ~]$ 
```
* pwd: `/home/lecture1/messages`
* The directory changed to the home directory.
* Output is not an error

### Directory as an argument
```zsh
[user@sahara ~]$ cd lecture1
[user@sahara ~/lecture1]$ 
```
* pwd: `/home`
* The directory changed to `/home/lecture1`
* Output is not an error

### File path as an argument
```zsh
[user@sahara ~]$ cd Hello.java
bash: cd Hello.java: Not a directory
[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1`
* We tried to go into a file, which is not a directory, giving us an error.
* Output shows that an error has occure

## ls
### No argument
```zsh
[user@sahara ~/lecture1/]$ ls
Hello.class Hello.java messages README
[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1/`
* The content of the pwd directory were listed in the output.
* Output is not an error

### Directory as an argument
```zsh
[user@sahara ~/lecture1]$ ls messages
en-us.txt es-mx.txt fr.txt zh-cn.txt
[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1`
* The contents of the path of the directory given were listed in the output.
* Output is not an error

### File path as an argument
```zsh
[user@sahara ~]$ ls Hello.java
Hello.java
[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1`
* The name of the file was outputted. 
* Output is not an error.


## cat
### No argument
```zsh
[user@sahara ~]$ cat 
Hello
Hello
World
World
```
* pwd: `/home`
* It waited for input, when we hit return it printed whatever we typed into the output.
* Output is not an error

### Directory as an argument
```zsh
[user@sahara ~/lecture1]$ cat messages
cat: messages: Is a directory
[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1`
* cat is for concatenating files and printing them on the standard output. We can't do that with a directory.
* Output shows an error.

### File path as an argument
```zsh
[user@sahara ~/lecture1]$ cat Hello.java
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public class Hello {
    public static void main(String[] args) throws IOException {
        String content = Files.readString(Path.of(args[0]), StandardCharsets.UTF_8);
        System.out.println(content);
    }
}[user@sahara ~/lecture1]$ 
```
* pwd: `/home/lecture1`
* Contents of the file were printed on the standard output.
* Output is not an error.

