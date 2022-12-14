## Safely Catching Aerial Micro-Robots in Mid-air using an Open-Source Aerial Robot with Soft Gripper

### Published in [Frontiers in Robotics and AI, Section Bio-Inspired Robotics, 2022](https://www.frontiersin.org/articles/10.3389/frobt.2022.1030515/full)
 
![Image](./Media/robot.png)

***
### 1. Introduction

This work focuses on catching safely an aerial micro-robot in mid-air using another aerial robot that is equipped with a universal soft gripper. To avoid aerodynamic disturbances such as downwash, that would push the target robot away, we follow a horizontal grasping approach. 

We developed: 
* A gripper design based on soft actuators that can stay horizontally straight with a single fixture and maintain sufficiently compliance in order to bend when air pressure is applied. 
* an open-source aerial robot (SoAG) equipped with the developed soft end-effector and that features an onboard pneumatic regulation system.

We experimentally demonstrated the feasibility of using the SoAG robot to catch a hovering micro-robot with or without propeller guards. The feasibility of dynamic catching is also shown by capturing a moving aerial micro-robot with a velocity of 0.2 m/s. To the authors’ knowledge, the SoAG robot is the first MAV to demonstrate the feasibility of catching a flying micro-robot with a soft gripper.

#### Authors: [Zhichao Liu](https://zhichaoliu.me), Caio Mucchiani, Keran Ye and Konstantinos Karydis from [ARCS Lab](https://sites.google.com/view/arcs-lab/) at [UC Riverside](https://www.ucr.edu/).

### If you find this repo useful for your project, please cite the paper

```
@article{liu2022safely,
  title={Safely catching aerial micro-robots in mid-air using an open-source aerial robot with soft gripper},
  author={Liu, Zhichao and Mucchiani, Caio and Ye, Keran and Karydis, Konstantinos},
  journal={Frontiers in Robotics and AI},
  volume={9},
  year={2022},
  publisher={Frontiers Media SA}
}
```

---
### 2. Videos
* **Catching Test**

[![Catching Test](https://img.youtube.com/vi/euO9ZnWgIko/0.jpg)](https://www.youtube.com/watch?v=euO9ZnWgIko)



* **Grasping Test**

[![Catching Test](https://img.youtube.com/vi/X4HE_QraaW4/0.jpg)](https://www.youtube.com/watch?v=X4HE_QraaW4)


* **Flyability Test**

[![Catching Test](https://img.youtube.com/vi/UIFhUlZQoqs/0.jpg)](https://www.youtube.com/watch?v=UIFhUlZQoqs)

---
### 3. Hardware

#### 3.1 Actuator
To avoid aerodynamic disturbances such as downwash, that would push the target robot away, the project follows a horizontal grasping approach to catch aerial targets. We introduce a gripper design based on soft actuators that can stay horizontally straight with a single fixture and maintain sufficiently compliance in order to bend when air pressure is applied.

![Image](./Media/actuator.gif) 

The fabrication of actuators follows the conventional method of casting with molds. The custom molds are 3D-printed in polylactic acid (PLA) while bases are directly 3D-printed with flexible 80A resin. With molds and bases ready, we mix the elastomer and process it using a degassing chamber. After cured, the two casted parts of the actuator (chamber and base layers) are bonded with an adhesive (Sil Poxy). Note that the flexible 80A base should be surrounded by silicone in the manufacturing of the base layer.

![Image](./Media/molds.png) 

The STL and design files for making actuators can be found [here](./Hardware/Actuator/).

#### 3.2 SoAG Robot
We mount the end-effector on a custom quadcopter MAV to develop the SoAG robot. The robot has a total weight of 1.64 kg. The custom-made MAV features frames that are fabricated with lightweight carbon fiber sheets (tensile strength 120, 000–175, 000 psi) using a Stepcraft D.600 CNC router with enclosure and milling bath. 

In addition to the MAV and end-effector (highlighted in red boxes in Figure 2D), the robot also includes pneumatic regulating components necessary to power the soft gripper. The onboard pneumatic regulation consists of two micro air pumps, one solenoid valve, and one MOSFET module. 

The design files can be be found [here](https://grabcad.com/library/soag-1).

[![Image](./Media/SoAG.png)](https://grabcad.com/library/soag-1) 

---
### 4. Software

#### 4.1 Arduino
We use an Arduino Nano to control the pneumatic system, as well as the servo motor. The code for arduino can be found [here](./Software/Arduino/). Note that the code is based on `rosserial_arduino` package, please follow the [tutorial](http://wiki.ros.org/rosserial_arduino/Tutorials) to set up the Arduino IDE if not done so. 

Three channels of PWM are utilized (left pump, right pump, and valve). Two custom services `flying_gripper/inflate` and `flying_gripper/empty` will be defined in the ROS package. Note that the rosserial_arduino code defines 4 ros services `/inflate_cmd`, `/deflate_cmd` for controlling the gripper, `/liftup_cmd`, `/putdown_cmd` for controlling the servo motor.

#### 4.2 ROS
This project uses an open-source flight controller [PX4](https://px4.io/) and [MAVROS](https://docs.px4.io/main/en/ros/ros1.html) (ROS 1). The vehicle works in the `OFFBOARD` mode. A simple code can be found [here](./Software/ROS/). Please copy the `flying_gripper` to your `catkin_ws\src` folder and compile. After compilation, run 
```
cd <Arduino sketchbook>/libraries
rm -rf ros_lib
rosrun rosserial_arduino make_libraries.py .
```
to update the `rosserial_arduino` before compiling the Arduino IDE. 

For geometric tracking controller, please refer to [mavros_controllers](https://github.com/Jaeyoung-Lim/mavros_controllers). 

For trajectory generation, please refer to [mav_trajectory_generation](https://github.com/ethz-asl/mav_trajectory_generation) and [traj_gen](https://github.com/icsl-Jeon/traj_gen).

---
### 5. Future work
There are some interesting directions for future work, including but not limited to

* safe multi-robot co-manipulation for transportation and assembly
*  upgrade the MAV hardware and incorporate the target’s mass onto the system’s modeling
*  strengthen the grasping capacity by using stronger materials and pneumatic actuation to scale up the solution
* deploy the robot in outdoor or confined environments without a motion capture system
* discover the possibility of combining aerialground robots by including pneumatic legged mobility








