pragma solidity ^0.5.10;

import "ds-test/test.sol";

import "./TestHevm.sol";

contract TestHevmTest is DSTest {
    TestHevm hevm;

    function setUp() public {
        hevm = new TestHevm();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
