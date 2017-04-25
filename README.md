Luhn

The Luhn algorithm checks wether a credit card number, or other identification number, is valid. It helps prevent accidental user input errors.

The algorithm splits a number into individial digits, and then loops through the digits from the end.  It multiplies every other digit by 2, and subtracts 9 if it is greater or equal to 10. If the sum of the final digits is divisible by 10, then the number is valid and it will return "true".

Tests: luhn_spec.rb
