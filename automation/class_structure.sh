if [ "$#" -ne 2 ]; then
    echo "The script only accepts two parameters (the number of the lesson in lexic and numeric form)"
    exit
fi

classes_directory_name="classes"
class_directory_name="$2. $1 class"
class_title="$1 class"
code_directory_name="code"
slides_directory_name="slides"
challenges_directory_name="challenges"

code_file_name="$1_class_examples.swift"

cd ..
cd "$classes_directory_name"

mkdir "$class_directory_name"
cd "$class_directory_name"

touch "README.md"
echo "# $class_title
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
