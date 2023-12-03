#!/bin/bash

# Navigate to the src directory where Main.java is located
cd src

# Compile Main.java
javac Main.java

# Run the compiled Java program with the correct file path
java Main ./data.txt
