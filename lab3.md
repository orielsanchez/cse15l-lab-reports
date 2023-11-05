# Lab Report 3 - Bugs and Commands

## Part 1 - Bugs

### JUnit Test of failure inducing input

```java
@Test
  public void testReversed2() {
    int[] input1 = { 1 };
    assertArrayEquals(new int[] { 1 }, ArrayExamples.reversed(input1));
  }
```

### JUnit Test of non-failure inducing input

```java
@Test
  public void testReversed() {
    int[] input1 = {};
    assertArrayEquals(new int[] {}, ArrayExamples.reversed(input1));
  }
```

### The Symptom

![symptom](./images/Screenshot%202023-10-30%20at%205.42.39%20PM.png)

### The Bug: Before and After

#### Before

```java
  static int[] reversed(int[] arr) {
    int[] newArray = new int[arr.length];
    for(int i = 0; i < arr.length; i += 1) {
      arr[i] = newArray[arr.length - i - 1];
    }
    return arr;
  }
```

#### After

```java
static int[] reversed(int[] arr) {
    int[] newArray = new int[arr.length];
    for (int i = 0; i < arr.length; i += 1) {
      newArray[i] = arr[arr.length - i - 1];
    }
    return newArray;
  }
```

## Part 2 - Researching Commands - grep

All option descriptions come from "man grep".

### command line option 1: grep -i

Perform case insensitive matching. By default, grep is case sensitive.

#### example 1:

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -i "junitcore" ./*.*
./test.sh:java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestDocSearch
(base) oriel@Oriels-MacBook-Air docsearch %
```

#### example 2

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -i "server" ./*.java
./DocSearchServer.java:class DocSearchServer {
./DocSearchServer.java:        Server.start(port, new Handler(args[1]));
./Server.java:// A simple web server using Java's built-in HttpServer
./Server.java:// Examples from https://dzone.com/articles/simple-http-server-in-java were useful references
./Server.java:import com.sun.net.httpserver.HttpExchange;
./Server.java:import com.sun.net.httpserver.HttpHandler;
./Server.java:import com.sun.net.httpserver.HttpServer;
./Server.java:class ServerHttpHandler implements HttpHandler {
./Server.java:    ServerHttpHandler(URLHandler handler) {
./Server.java:public class Server {
./Server.java:        HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);
./Server.java:        server.createContext("/", new ServerHttpHandler(handler));
./Server.java:        //start the server
./Server.java:        server.start();
./Server.java:        System.out.println("Server started at http://" + InetAddress.getLocalHost().getHostName() + ":" + port);
(base) oriel@Oriels-MacBook-Air docsearch %
```

### command line option 2: grep -c

Only a count of selected lines is written to standard output

#### example 1

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -c "server" ./*.*
./DocSearchServer.class:0
./DocSearchServer.java:0
./FileHelpers.class:0
./Handler.class:0
./README.md:0
./Server.class:2
./Server.java:9
./ServerHttpHandler.class:2
./TestDocSearch.class:0
./TestDocSearch.java:0
./URLHandler.class:0
./biomed-sizes.txt:0
./count-txts.sh:0
./find-results.txt:0
./grep-results.txt:0
./plos-biomed-sizes.txt:0
./plos-sizes.txt:0
./start.sh:0
./test.sh:0
(base) oriel@Oriels-MacBook-Air docsearch %
```

#### example 2

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -c "test" ./*.*
./DocSearchServer.class:0
./DocSearchServer.java:0
./FileHelpers.class:0
./Handler.class:0
./README.md:0
./Server.class:0
./Server.java:0
./ServerHttpHandler.class:0
./TestDocSearch.class:2
./TestDocSearch.java:3
./URLHandler.class:0
./biomed-sizes.txt:0
./count-txts.sh:0
./find-results.txt:0
./grep-results.txt:0
./plos-biomed-sizes.txt:0
./plos-sizes.txt:0
./start.sh:0
./test.sh:0
(base) oriel@Oriels-MacBook-Air docsearch %
```

### command line option 3: grep -I

Ignore binary files.

#### example 1

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -I "server" ./*.*
./Server.java:// A simple web server using Java's built-in HttpServer
./Server.java:// Examples from https://dzone.com/articles/simple-http-server-in-java were useful references
./Server.java:import com.sun.net.httpserver.HttpExchange;
./Server.java:import com.sun.net.httpserver.HttpHandler;
./Server.java:import com.sun.net.httpserver.HttpServer;
./Server.java:        HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);
./Server.java:        server.createContext("/", new ServerHttpHandler(handler));
./Server.java:        //start the server
./Server.java:        server.start();
(base) oriel@Oriels-MacBook-Air docsearch %
```

#### example 2

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -I "java" ./*.*
./DocSearchServer.java:import java.io.File;
./DocSearchServer.java:import java.io.IOException;
./DocSearchServer.java:import java.net.URI;
./DocSearchServer.java:import java.net.URISyntaxException;
./DocSearchServer.java:import java.net.InetAddress;
./DocSearchServer.java:import java.nio.file.Files;
./DocSearchServer.java:import java.nio.file.Path;
./DocSearchServer.java:import java.nio.file.Paths;
./DocSearchServer.java:import java.util.ArrayList;
./DocSearchServer.java:import java.util.List;
./DocSearchServer.java:import java.util.Collections;
./Server.java:// Examples from https://dzone.com/articles/simple-http-server-in-java were useful references
./Server.java:import java.io.IOException;
./Server.java:import java.io.OutputStream;
./Server.java:import java.net.InetSocketAddress;
./Server.java:import java.net.InetAddress;
./Server.java:import java.net.URI;
./TestDocSearch.java:import java.net.URI;
./TestDocSearch.java:import java.net.URISyntaxException;
./TestDocSearch.java:import java.io.IOException;
./start.sh:javac Server.java DocSearchServer.java
./start.sh:java DocSearchServer 4001 "./"
./test.sh:javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
./test.sh:java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestDocSearch
(base) oriel@Oriels-MacBook-Air docsearch %
```

### command line option 4: grep -n

Each output line is preceded by its relative line number in the file, starting at line 1. The line number counter is reset for each file processed. This option is ignored if -c, -L, -l, or -q is specified.

#### example 1

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -n "server" ./*.*
Binary file ./Server.class matches
./Server.java:1:// A simple web server using Java's built-in HttpServer
./Server.java:3:// Examples from https://dzone.com/articles/simple-http-server-in-java were useful references
./Server.java:11:import com.sun.net.httpserver.HttpExchange;
./Server.java:12:import com.sun.net.httpserver.HttpHandler;
./Server.java:13:import com.sun.net.httpserver.HttpServer;
./Server.java:45:        HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);
./Server.java:48:        server.createContext("/", new ServerHttpHandler(handler));
./Server.java:50:        //start the server
./Server.java:51:        server.start();
Binary file ./ServerHttpHandler.class matches
(base) oriel@Oriels-MacBook-Air docsearch %
```

#### example 2

```zsh
(base) oriel@Oriels-MacBook-Air docsearch % grep -n "main" ./*.*
Binary file ./DocSearchServer.class matches
./DocSearchServer.java:67:    public static void main(String[] args) throws IOException {
(base) oriel@Oriels-MacBook-Air docsearch %
```
