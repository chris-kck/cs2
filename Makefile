# define a makefile variable for the java compiler
JCC = javac
#params=" "
# define a makefile variable for compilation flags

# make runs first target which is default in this case

default: ./bin/LSArrayApp.class

bst: ./bin/LSBSTApp.class

./bin/LSArrayApp.class: ./src/LSArrayApp.java
	$(JCC) -d ./bin -g ./src/LSArrayApp.java

./bin/LSBSTApp.class: ./src/LSBSTApp.java
	$(JCC) -d ./bin -g ./src/LSBSTApp.java
# Removes all .class files, so that the next make rebuilds them

clean:
	$(RM) *.class

run: ./bin/LSArrayApp.class
	java -cp ./bin LSArrayApp  $(params)

run2: ./bin/LSBSTApp.class
    java -cp ./bin LSBSTApp $(params)
