#include<Servo.h>
Servo servo1;
Servo servo2;
Servo servo3;

int potPin1 = A0;
int potPin2 = A1;
int potPin3 = A2;

int servoPin1 = 8;
int servoPin2 = 9;
int servoPin3 = 10;

void setup()
{
    servo1.attach(servoPin1);
    servo2.attach(servoPin2);
    servo3.attach(servoPin3);
}
void loop()
 {
    int potValue1 = analogRead(potPin1);
    int potValue2 = analogRead(potPin2);
    int potValue3 = analogRead(potPin3);

    int angle1 = map(potValue1, 0, 1023, 0, 180);
    int angle2 = map(potValue2, 0, 1023, 0, 180);
    int angle3 = map(potValue3, 0, 1023, 0, 180);

    servo1.write(angle1);
    servo2.write(angle2);
    servo3.write(angle3);
    delay(15);
 }