#include <LiquidCrystal.h>

// Pin definitions
#define RS 12
#define EN 11
#define D4 5
#define D5 4
#define D6 3
#define D7 2
#define CONTRAST_PIN A0

// LCDControl class definition
class LCDControl {
public:
    LCDControl();
    void begin();
    void printName(String name);
    void setContrast(int contrast);

private:
    LiquidCrystal lcd;
};

// LCDControl constructor
LCDControl::LCDControl()
    : lcd(RS, EN, D4, D5, D6, D7) {}

// Initialize the LCD
void LCDControl::begin() {
    lcd.begin(16, 2);
}

// Print a name on the LCD
void LCDControl::printName(String name) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print(name);
}

// Set the contrast of the LCD
void LCDControl::setContrast(int contrast) {
    analogWrite(CONTRAST_PIN, contrast);
}

// Instantiate an LCDControl object
LCDControl lcdControl;

void setup() {
    lcdControl.begin();
    lcdControl.printName("Your Name");
}

void loop() {
    // Nothing in the loop for this example
}
