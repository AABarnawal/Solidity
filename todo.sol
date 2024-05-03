// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract todo{
    string public ContarctName = "TodoList";
    //variables
    struct list{
        uint num;
        string text;
    }
    uint public i = 1;
    mapping (uint => list) element;
    //put function
    function addList( string memory _text) public {
        element[i] = list( i ,_text);
        i++;
    }

    //get function(search)
    function searchList(uint _search) public view returns(string memory){
        require(_search<i, "this is not under list");
        return element[_search].text;
    }

    //send list
    function getList()public view {
        
    }


}
