CPATH='.;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
cd student-submission
if [[ -f ListExamples.java ]]
    then 
        echo "ListExamples Found"
    else
        echo "Need file ListExamples"
        exit 1
fi

javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java

if [[ -f ListExamples.class ]]
    then 
        echo "ListExamples compiled"
    else
        echo "ListExamples failed to cmopile"
        exit 1
fi
echo "Finished compiling"

java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExample