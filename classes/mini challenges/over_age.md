# Over Age
Write a function that receives two parameters, the first of type **String** that represents a person's name and the second of type **Int** that represents their age.

The function must return a **Boolean** indicating if the person is of legal age.

The function should also print in the console:
- "Hi <person's name>, you're and adult" if the person is of legal age
- "Hi <person's name>, you are <years left to be of age> year(s) away from being an adult" if the person is a minor.

## Remember:
- Do not use *magic numbers*
- Make it easy to change the value of the minimum age to be of legal age, since it can change from country to country.

### Examples:
Input: "Alejandro", 24
Console output: "Hi Alejandro, you're and adult"
Function return value: true

Input: "Jane", 17
Console output: "Hi Jane, you are 1 year away from being an adult"
Function return value: false 
