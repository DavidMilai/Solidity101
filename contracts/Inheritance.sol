// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract A{
    function foo() public pure virtual returns(string memory){
        return "Contract A";
    }
}

contract B is A{
    function foo()public pure override virtual returns(string memory){
        return "Contract B";
    }

}

contract C is A{

        function foo()public pure virtual override returns(string memory){
        return "Contract C";
    }
}

contract D is B,C{


        function foo()public pure override (B,C) returns(string memory){
        return super.foo();
    }
}

contract E is C,B {

         function foo()public pure override (C,B) returns(string memory){
        return super.foo();
    }
}