if [ "$#" -ne 1 ]; then
    echo "The script only accepts one parameter (the number of the lesson)"
    exit
fi

class_directory_name="$1 class"
code_directory_name="code"
slides_directory_name="slides"
challenges_directory_name="challenges"

code_file_name="$1_class_examples.swift"

cd ..

mkdir "$class_directory_name"
cd "$class_directory_name"

touch "README.md"
echo "# $class_directory_name
## Before lecture
Before this class is recommended that you have

## What we saw?
On this class we saw the following topics:
-

## Before next lecture
- " >> README.md

mkdir "$slides_directory_name"

mkdir "$challenges_directory_name"

mkdir "$code_directory_name"
cd "$code_directory_name"
touch "$code_file_name"

echo "structure created"
