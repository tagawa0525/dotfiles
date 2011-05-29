#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MAIN
#include <boost/test/unit_test.hpp>
#include <iostream>
#include <string>
#include <vector>
#include <assert.h>

using namespace std;

BOOST_AUTO_TEST_CASE( test_sample )
{
  BOOST_CHECK_EQUAL(1,1);
}
