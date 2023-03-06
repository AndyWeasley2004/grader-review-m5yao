CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

if [[ -f ListExamples.java ]]
    then 
        echo "ListExamples Found"
    else
        echo "Need file ListExamples"
        exit 1
fi

cp student-submission/ListExamples.java ./
javac -cp $CPATH *.java
if [[ $? -eq 0 ]]
    then 
        echo "ListExamples compiled"
    else
        echo "ListExamples failed to cmopile"
        exit 1
fi
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples



