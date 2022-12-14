// Generated by gencpp from file flying_gripper/emptyRequest.msg
// DO NOT EDIT!


#ifndef FLYING_GRIPPER_MESSAGE_EMPTYREQUEST_H
#define FLYING_GRIPPER_MESSAGE_EMPTYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace flying_gripper
{
template <class ContainerAllocator>
struct emptyRequest_
{
  typedef emptyRequest_<ContainerAllocator> Type;

  emptyRequest_()
    {
    }
  emptyRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::flying_gripper::emptyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flying_gripper::emptyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct emptyRequest_

typedef ::flying_gripper::emptyRequest_<std::allocator<void> > emptyRequest;

typedef boost::shared_ptr< ::flying_gripper::emptyRequest > emptyRequestPtr;
typedef boost::shared_ptr< ::flying_gripper::emptyRequest const> emptyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flying_gripper::emptyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flying_gripper::emptyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace flying_gripper

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::flying_gripper::emptyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flying_gripper::emptyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flying_gripper::emptyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flying_gripper::emptyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flying_gripper::emptyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flying_gripper::emptyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flying_gripper::emptyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::flying_gripper::emptyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::flying_gripper::emptyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flying_gripper/emptyRequest";
  }

  static const char* value(const ::flying_gripper::emptyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flying_gripper::emptyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::flying_gripper::emptyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flying_gripper::emptyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct emptyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flying_gripper::emptyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::flying_gripper::emptyRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // FLYING_GRIPPER_MESSAGE_EMPTYREQUEST_H
