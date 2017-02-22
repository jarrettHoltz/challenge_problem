Challenge Problem 2
============

### Joint Control

####Compilation
In challenge_problem/catkin_ws
```bash
rm -rf build
mkdir build
cd build
cmake ..
make
```
Add path to .bashrc
```bash
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:~/challenge_problem/catkin_ws/build
```

#### Usage
Set the orientation of the joint in radians
```bash
./set_joint_rot 'x y z'
```
Set the pose of the joint in meters (currently z is fixed to avoid drifting)
```bash
./set_joint_trans 'x y z'
```

###Environment setup

#### Compilation
In challenge_problem
```bash
rm -rf build
catkin_make
source devel/setup.bash
```

#### Usage
Launch the simulation environment
```bash
roslaunch cp1_gazebo cp1-displ-test.launch
python tf_broadcaster.py
```
