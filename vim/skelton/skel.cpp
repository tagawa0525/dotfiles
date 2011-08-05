#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MAIN
#include <boost/test/unit_test.hpp>
#include <iostream>
#include <string>
#include <vector>
#include <assert.h>

using namespace std;

class Foo {
  public:
    bool bar()
    {
      return true;
    }
  private:

};

bool baz()
{
  return true;
}

BOOST_AUTO_TEST_CASE( test_Foo )
{
  Foo obj;
  BOOST_CHECK_EQUAL(obj.bar(),true);
  BOOST_CHECK_EQUAL(baz(),true);
}
