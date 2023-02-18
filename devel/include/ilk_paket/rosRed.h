// Generated by gencpp from file ilk_paket/rosRed.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_ROSRED_H
#define ILK_PAKET_MESSAGE_ROSRED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ilk_paket
{
template <class ContainerAllocator>
struct rosRed_
{
  typedef rosRed_<ContainerAllocator> Type;

  rosRed_()
    : center(0.0)  {
    }
  rosRed_(const ContainerAllocator& _alloc)
    : center(0.0)  {
  (void)_alloc;
    }



   typedef float _center_type;
  _center_type center;





  typedef boost::shared_ptr< ::ilk_paket::rosRed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ilk_paket::rosRed_<ContainerAllocator> const> ConstPtr;

}; // struct rosRed_

typedef ::ilk_paket::rosRed_<std::allocator<void> > rosRed;

typedef boost::shared_ptr< ::ilk_paket::rosRed > rosRedPtr;
typedef boost::shared_ptr< ::ilk_paket::rosRed const> rosRedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ilk_paket::rosRed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ilk_paket::rosRed_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ilk_paket::rosRed_<ContainerAllocator1> & lhs, const ::ilk_paket::rosRed_<ContainerAllocator2> & rhs)
{
  return lhs.center == rhs.center;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ilk_paket::rosRed_<ContainerAllocator1> & lhs, const ::ilk_paket::rosRed_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ilk_paket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::rosRed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::rosRed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::rosRed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::rosRed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::rosRed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::rosRed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ilk_paket::rosRed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd6fe19c049784a7c020b3dcd2e01242";
  }

  static const char* value(const ::ilk_paket::rosRed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd6fe19c049784a7ULL;
  static const uint64_t static_value2 = 0xc020b3dcd2e01242ULL;
};

template<class ContainerAllocator>
struct DataType< ::ilk_paket::rosRed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ilk_paket/rosRed";
  }

  static const char* value(const ::ilk_paket::rosRed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ilk_paket::rosRed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 center\n"
;
  }

  static const char* value(const ::ilk_paket::rosRed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ilk_paket::rosRed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.center);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rosRed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ilk_paket::rosRed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ilk_paket::rosRed_<ContainerAllocator>& v)
  {
    s << indent << "center: ";
    Printer<float>::stream(s, indent + "  ", v.center);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ILK_PAKET_MESSAGE_ROSRED_H
