pragma ton-solidity >= 0.6.0;

//SPDX-License-Identifier: UNLICENSED

contract XTC{
    uint256 public TotalSupply;
    uint256 public Decimals;
    string public name;
    string public symbol;
    string public info;
    mapping(address => uint256) public balance


//Contract initialization and parameters definition

    constructor () public {
        TotalSupply = 1000000000 * (10 ** Decimals);
        Decimals = 18;
        name = "XtremeCoin";
        symbol = "XTC";
        info = "XtremeCoin is a revolutionary token created for weather insurance";
    }

    // Above is the contract constructor.

    function transfer(address receiver, uint256 value) public {
        require(balance[msg.sender] >= value, "Insufficient Balance"); 
        balance[msg.sender] -= value;
        balance[receiver] += value;  
    }

    function BalanceOf(address owner) public view returns(uint256) {
        return balance[owner];
    }
    
    function updateinfo(string memory newinfo) {
        info = newinfo;
    }
}


