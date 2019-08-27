pragma solidity ^0.5.10;

import "ds-test/test.sol";

contract Token {
    function totalSupply() external view returns (uint256);
}

contract TestHevmTest is DSTest {

    Token mkr;
    
    function test_basic_sanity() public {
        mkr = Token(0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2);

        assertEq(mkr.totalSupply(), 1000000);
    }
}
