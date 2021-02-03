# RemoveXsReplaceTs
Create a function called removeXsReplaceTs that receives one **array of strings** and returns another **array of strings**.

The function will receive an array that can contain different combinations of the following elements:
- "O"
- "X"
- "T"

The function should remove the "X" elements and replace the "T" elements with "O" elements.

Notes:
- Keep a count of all the changing and removing operations

## Extra:
- Instead of returning an **array of strings** from the function, return a **tuple** where the first element is the updated **array of strings** and the second element is an **Int** representing the number of operations to remove or replace an element.
- Use the return value from the function to print the following message on the console:
```
"Updated value: <array of strings>
Operations made: <number of operations made> "
```
*Notice the message is printed on two separate lines*

## Examples:
```
Input: ["O", "O", "O", "O"]
Output: ["O", "O", "O", "O"]
```
```
Input: ["O", "X", "O", "X"]
Output: ["O", "O"]
```
```
Input: ["O", "X", "O", "T"]
Output: ["O", "O", "O"]
```

### Extra example
```
Input: ["O", "X", "O", "T"]
Output: ["O", "O", "O"]
Console Output:
"
"Updated value:  ["O", "X", "O", "T"]
Operations made: 2 
"
```
