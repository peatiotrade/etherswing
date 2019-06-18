// TODO use vyper interface
// from vyper.interfaces import ERC20
// implements: ERC20
pragma solidity ^0.5.0;

import "../../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract DiaToken is ERC20 {
    string public name = "Dai";
    string public symbol = "DAI";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 10000 * (10 ** decimals);

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}