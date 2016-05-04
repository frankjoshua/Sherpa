/*
 * rosserial Subscriber Example
 * Blinks an LED on callback
 */
#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <SoftwareSerial.h>
#include <SabertoothSimplified.h>

SoftwareSerial SWSerial(NOT_A_PIN, 12);
SabertoothSimplified ST(SWSerial); // Use SWSerial as the serial port.
#define MOTOR_LEFT 2
#define MOTOR_RIGHT 1

/*
* Helper function to map Floats, based on Arduino map()
*/
float mapfloat(float x, float in_min, float in_max, float out_min, float out_max){
 return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

ros::NodeHandle nh;

int mSpeed = 0;
int mDir = 0;

void messageCb( const geometry_msgs::Twist& toggle_msg){
  if(toggle_msg.linear.x > 0){
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }

  mSpeed = mapfloat(toggle_msg.linear.x, -1, 1, -127, 127);
  mDir = mapfloat(toggle_msg.angular.z, -1, 1, -127, 127);

  ST.motor(MOTOR_LEFT, constrain(mSpeed + mDir, -127, 127));
  ST.motor(MOTOR_RIGHT, constrain(mSpeed - mDir, -127, 127));
}

ros::Subscriber<geometry_msgs::Twist> sub("cmd_vel", &messageCb );

void setup()
{
  pinMode(13, OUTPUT);
  SWSerial.begin(9600);
  nh.initNode();
  nh.subscribe(sub);
}

void loop()
{
  nh.spinOnce();
  delay(1);
}
