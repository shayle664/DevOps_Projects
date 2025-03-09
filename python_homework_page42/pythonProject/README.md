# Python Practice Tasks

## Task 1: Spouse Information
### Objective
Create variables to store information about your spouse, check variable types, and convert types.

### Steps
- Create a variable for holding your spouse's name.
- Print the type of the spouse's name variable.
- Create a variable for holding your spouse's age.
- Convert the age variable to a string.
- Create a variable to hold credit card details (dummy details for practice).
- Print the converted age and credit card details.

### Solution
```python
spouse = "Tal"
print(type(spouse))

spouse_age = 25
spouse_age_string = str(spouse_age)
credit_card_details = "123 salty fish"
print(spouse_age_string + " " + credit_card_details)
```
---

## Task 2: Personal Information
### Objective
Define variables for personal details and print them.

### Steps
- Define a variable for your name.
- Define a variable for your nickname.
- Define a variable for your pet’s name.
- Define a variable for your age.
- Print all values in a formatted string.

### Solution
```python
my_name = "Shay Levi"
nickname = "bboy bugs"
my_pet_name = "Rexy"
my_age = 27
print(f"My name is {my_name}, my nickname is {nickname} and I am {my_age} years old")
```
---


## Task 3: Network Information
### Objective
Store and manipulate network-related variables.

Steps
- Create a variable for the network you are connected to.
- Create a variable for your laptop’s hostname.
- Concatenate the network and hostname into a new variable my_con.
- Print my_con.
- Append an ID (or any number) to my_con and print it again.

### Solution
```python
wifi = "wifi/eth/network"  # Adjust based on your actual network type
laptops_hostname = "shay"
my_con = wifi + laptops_hostname
print(my_con)
my_con = my_con + " 5324"
print(my_con)
```
