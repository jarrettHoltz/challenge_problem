#ifndef _JOINT_PLUGIN_HH_
#define _JOINT_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
namespace gazebo
{
  /// \brief A plugin to control a Velodyne sensor.
  class JointPlugin : public ModelPlugin
  {
    /// \brief Constructor
    public: JointPlugin() {}

    /// \brief The load function is called by Gazebo when the plugin is
    /// inserted into simulation
    /// \param[in] _model A pointer to the model that this plugin is
    /// attached to.
    /// \param[in] _sdf A pointer to the plugin's SDF element.
    public: virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
    {
      std::cout << "Plugin Connected" << std::endl;
      std::cout << _model->GetWorld()->GetName() << std::endl;
      std::cout << _model->GetName() << std::endl;
        this->z_joint = _model->GetJoint("camera_rgb_joint");
        this->y_joint = _model->GetJoint("kinect_y_joint");
        this->x_joint = _model->GetJoint("kinect_x_joint");
        this->xr_joint = _model->GetJoint("kinect_xr_joint");
        this->yr_joint = _model->GetJoint("kinect_yr_joint");
//         this->zr_joint = _model->GetJoint("kinect_zr_joint");
        this->link = _model->GetLink("camera_rgb_frame");
        
        // Create the node
        this->node = transport::NodePtr(new transport::Node());
        std::cout << _model->GetWorld()->GetName() << std::endl;
        this->node->Init(_model->GetWorld()->GetName());
// 
        // Create a topic name
        std::string topicName = "~/" + _model->GetName() + "/set_joint_trans";

        // Subscribe to the topic, and register a callback
        this->sub = this->node->Subscribe(topicName,
          &JointPlugin::OnMsgTrans, this);
        
        // Create a topic name
        topicName = "~/" + _model->GetName() + "/set_joint_rot";

        // Subscribe to the topic, and register a callback
        this->sub2 = this->node->Subscribe(topicName,
          &JointPlugin::OnMsgRot, this);
    }
    
    
    public: void SetJointTrans(const double &_angle, 
                          const double &_angle2,
                          const double &_angle3) {
      // Set the joint's target velocity.
      
      this->xr_joint->SetAngle(0,_angle);
      this->yr_joint->SetAngle(0,_angle2);
//       this->zr_joint->SetPosition(0,_angle3);
    }
    
    public: void SetJointRot(const double &_angle, 
                          const double &_angle2,
                          const double &_angle3) {
      std::cout << "set_joint_rot" << std::endl;
      // Set the joint's target velocity.
      this->x_joint->SetAngle(0,_angle);
      this->y_joint->SetAngle(0,_angle2);
      this->z_joint->SetAngle(0,_angle3);
    }
    
    /// \brief Handle incoming message
    /// \param[in] _msg Repurpose a vector3 message. This function will
    /// only use the x component.
    private: void OnMsgTrans(ConstVector3dPtr &_msg)
    {
      this->SetJointTrans(_msg->x(), _msg->y(), _msg->z());
    }
    
    /// \brief Handle incoming message
    /// \param[in] _msg Repurpose a vector3 message. This function will
    /// only use the x component.
    private: void OnMsgRot(ConstVector3dPtr &_msg)
    {
      this->SetJointRot(_msg->x(), _msg->y(), _msg->z());
    }
    
    /// \brief Pointer to the model.
    private: physics::ModelPtr model;

    /// \brief Pointer to the joint.
    private: physics::JointPtr x_joint;
    private: physics::JointPtr y_joint;
    private: physics::JointPtr z_joint;
    private: physics::JointPtr xr_joint;
    private: physics::JointPtr yr_joint;
    private: physics::JointPtr zr_joint;
    private: physics::LinkPtr link;
    /// \brief A node used for transport
    private: transport::NodePtr node;

    /// \brief A subscriber to a named topic.
    private: transport::SubscriberPtr sub;
    private: transport::SubscriberPtr sub2;
  };

  // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
  GZ_REGISTER_MODEL_PLUGIN(JointPlugin)
}
#endif