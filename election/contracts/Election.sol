pragma solidity ^0.4.2;

contract Election {
	//Store candidate
	//Read candidate
	string public candidate;
	//Constructor
	// function Election () public { -- deprecated
	constructor () public {
		candidate = 'Candidate 1';

	}
}