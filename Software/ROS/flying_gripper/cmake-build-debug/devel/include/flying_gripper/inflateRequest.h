// Generated by gencpp from file flying_gripper/inflateRequest.msg
// DO NOT EDIT!


#ifndef FLYING_GRIPPER_MESSAGE_INFLATEREQUEST_H
#define FLYING_GRIPPER_MESSAGE_INFLATEREQUEST_H


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
struct inflateRequest_
{
  typedef inflateRequest_<ContainerAllocator> Type;

  inflateRequest_()
    : dt(0.0)  {
    }
  inflateRequest_(const ContainerAllocator& _alloc)
    : dt(0.0)  {
  (void)_alloc;
    }



   typedef double _dt_type;
  _dt_type dt;





  typedef boost::shared_ptr< ::flying_gripper::inflateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flying_gripper::inflateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct inflateRequest_

typedef ::flying_gripper::inflateRequest_<std::allocator<void> > inflateRequest;

typedef boost::shared_ptr< ::flying_gripper::inflateRequest > inflateRequestPtr;
typedef boost::shared_ptr< ::flying_gripper::inflateRequest const> inflateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flying_gripper::inflateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flying_gripper::inflateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::flying_gripper::inflateRequest_<ContainerAllocator1> & lhs, const ::flying_gripper::inflateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.dt == rhs.dt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::flying_gripper::inflateRequest_<ContainerAllocator1> & lhs, const ::flying_gripper::inflateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace flying_gripper

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::flying_gripper::inflateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flying_gripper::inflateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flying_gripper::inflateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flying_gripper::inflateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flying_gripper::inflateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flying_gripper::inflateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flying_gripper::inflateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "93766ebecbbd5790653fc71a2b245b46";
  }

  static const char* value(const ::flying_gripper::inflateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x93766ebecbbd5790ULL;
  static const uint64_t static_value2 = 0x653fc71a2b245b46ULL;
};

template<class ContainerAllocator>
struct DataType< ::flying_gripper::inflateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flying_gripper/inflateRequest";
  }

  static const char* value(const ::flying_gripper::inflateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flying_gripper::inflateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 dt\n"
;
  }

  static const char* value(const ::flying_gripper::inflateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flying_gripper::inflateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct inflateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flying_gripper::inflateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::flying_gripper::inflateRequest_<ContainerAllocator>& v)
  {
    s << indent << "dt: ";
    Printer<double>::stream(s, indent + "  ", v.dt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FLYING_GRIPPER_MESSAGE_INFLATEREQUEST_H
