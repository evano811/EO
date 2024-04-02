#include <LiquidCrystal.h>

// Initialize the LCD library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  // Set up the LCD's number of columns and rows:
  lcd.begin(16, 2);

  // Adjust contrast using a potentiometer connected to pin A0
  int contrast = analogRead(A0);
  lcd.setContrast(contrast);

  // Print the name on the LCD
  printName("Evan");
}

void loop() {
  // Nothing in the loop for this example
}

void printName(String name) {
  // Clear the LCD screen
  lcd.clear();

  // Set the cursor to the top-left corner
  lcd.setCursor(0, 0);

  // Print the name on the LCD
  lcd.print(name);
}
