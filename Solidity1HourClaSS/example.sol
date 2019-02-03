pragma solidity ^0.4.17;
/*
Types of variables

    All the variables ise the camel case style like camelCaseStyle.
    Address
    Uint256
    String
    Bytes32
    Mapping
    Arrays
    Struct
    events
    bool

*/

contract Example {
    address myAddress; // etherium address
    uint256 myNumber;  // unsigned integer which cannot be negative and has length of 256. It is same as uint
    string text = " This is my text ";
    bytes32 aShortText; // byte items that are used to store characters/ texts. i.e. upto 32 bits. It is generally used so that less resources are used on blockchain
    mapping(address => uint256) myMapping; // A mapping is list of values for each address I have numbers that are mapped to address.
    // 0x3 i.e. my address. It is used to store big amount of structured information. One should know `key` before accessing it.
    bool myBoolean = true;


    struct Person {
        // It is used to store property of a the variable or object.
        string name;
        uint age;
        uint height;

        
    }

    //Creating arrrays
    uint[] myNumbers = [1,2,3,4];
    string[] myName = ["iad", "gasrg"];
    Person[] persons;     //Arrays of struct

    //using struct
    Person personA = Person("personName1", 23, 183);
    persons.push(personA);

    event ShowAges(unit256); // function that can be used for logging info on blockchain
    emit ShowAges(23); //when you execute this,information is stored on the blockchain. Like this function was called by this address at this time

}
