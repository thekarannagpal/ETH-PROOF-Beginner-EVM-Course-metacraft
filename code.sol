 pragma solidity ^0.8.18;


contract MyToken {

    // public variables here
    string public TokenName = "Block";
    string public tokenAbbrv = "Chain";
    uint public  totalsupply = 0;

    // mapping variable here
      mapping(address => uint) public balance;
    // mint function
     function mint(address _address, uint total) public {
          totalsupply += total;
          balance[_address] += total;
     }
    // burn function
    function burn(address _address, uint spend) public {
         if(balance[_address]>=  spend){
          totalsupply -= spend;
          balance[_address] -= spend;
     }
    }

}
