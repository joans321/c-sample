#include "math.h"
#include "gtest/gtest.h"


TEST(Math,add) {
    EXPECT_EQ(2, add(1,1));
    EXPECT_EQ(10, add(4,6));
    EXPECT_GT(20, add(10,9));
}

TEST(Math, sub) {
   EXPECT_EQ(1, sub(9,8));
   EXPECT_EQ(4, sub(29,25));
}

