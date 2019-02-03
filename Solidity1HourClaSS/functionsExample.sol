pragma solidity 0.4.15;

/*

 Constructor()
 Function functionName()
 public, private, external and internal
 modifier modifierName()
*/

contract Example {

    uint myNumber;
    constructor() public {
        // function that is invoked when contract is created
        myNumber=3;
        showMyNumber(); //execution of function
        another();
    }
    
    modifier onlyOwner {
        // a function which checks something and then allows the access or not. basically it is for limiting the access to user and variables.
        require (myNumber > 3);
        _; // the function will execute if the required condition is met

    }
    
    function showMyNumber() public onlyOwner returns(uint){
        return myNumber;
    }
    
    function another() internal {
        // internal here means that only this contract can use this function
        // external can also be used where an external user can use the function
        // private 
        
    }
    
    function getEther() public payable returns(uint){
        // payable alloiws external people to execute this function and also send theter to that function. Useful for ICO. 
        
        return myNumber;
    }
    

}