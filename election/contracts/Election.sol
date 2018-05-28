pragma solidity ^0.4.2;

contract Election {
	//Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//Store Candidates
	//Fetch Candidates
	mapping(uint => Candidate) public candidates;

	//Store Candidates count
	uint public candidatesCount;

	constructor () public {
		addCandidate('Candidate 1');
		addCandidate('Candidate 2');
	}

	//add candidate to mapping

	function addCandidate(string _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
}