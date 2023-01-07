#if (ARDUINO >= 100)
 #include <Arduino.h>
#else
 #include <WProgram.h>
#endif
#include <ros.h>
#include <Servo.h>
#include <std_msgs/Float32.h>
#include <flying_gripper/inflate.h>
#include <flying_gripper/empty.h>

ros::NodeHandle nh;

std_msgs::Float32 input;

ros::Publisher p("/input", &input);

Servo myservo;  // create servo object to control a servo
int pos = 0;    // variable to store the servo position

int f_pwm = 3; //top duty cycle
int r_pwm = 5; //bottom duty cycle  
int v_pwm = 6; //valve

void inflate_callback(flying_gripper::inflate::Request &req, flying_gripper::inflate::Response &re)
{

    double t = req.dt;

    analogWrite(f_pwm, 255); //255
    analogWrite(r_pwm, 255);
    analogWrite(v_pwm, 0);
    delay(t);
    analogWrite(f_pwm, 0);
    analogWrite(r_pwm, 0);
    
    re.success = true;
 
}

void deflate_callback(flying_gripper::empty::Request &req, flying_gripper::empty::Response &re)
{

    analogWrite(f_pwm, 0);
    analogWrite(r_pwm, 0);
    analogWrite(v_pwm, 255);
    delay(1000);
    analogWrite(v_pwm, 0);
    re.success = true;

}

void liftup_callback(flying_gripper::empty::Request &req, flying_gripper::empty::Response &re)
{
    
    for (pos = 0; pos <= 90; pos += 1) { // goes from 0 degrees to 90 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15 ms for the servo to reach the position
  }
  myservo.write(90);
  re.success = true;
 
}


void putdown_callback(flying_gripper::empty::Request &req, flying_gripper::empty::Response &re)
{

  myservo.write(0);
  re.success = true;
}


ros::ServiceServer<flying_gripper::inflate::Request, flying_gripper::inflate::Response> inflate_srv("/inflate_cmd", &inflate_callback);

ros::ServiceServer<flying_gripper::empty::Request, flying_gripper::empty::Response> deflate_srv("/deflate_cmd", &deflate_callback);


ros::ServiceServer<flying_gripper::empty::Request, flying_gripper::empty::Response> up_srv("/liftup_cmd", &liftup_callback);

ros::ServiceServer<flying_gripper::empty::Request, flying_gripper::empty::Response> down_srv("/putdown_cmd", &putdown_callback);




void setup()
{ 
  input.data = 0.0;
  
  pinMode(13, OUTPUT);
  nh.initNode();

  nh.advertise(p);
  nh.advertiseService(inflate_srv);
  nh.advertiseService(deflate_srv);
  nh.advertiseService(up_srv);
  nh.advertiseService(down_srv);
  nh.advertiseService(response);

  myservo.attach(9);  // attaches the servo on pin 9 to the servo object

  for (pos = 60; pos <= 90; pos += 1) { // init
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15 ms for the servo to reach the position
  }
  myservo.write(90);
  p.publish(&input);
}


void loop()
{
  nh.spinOnce();
  delay(10);
}
