pragma solidity ^0.4.2;

contract Election {
	//Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//Store accounts that have voted
	mapping(address => bool) public voters;

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

	function vote(uint _candidateId) public {
		//require that they haven't voted before
		require(!voters[msg.sender]);

		//require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);

		//record that voter has voted
		voters[msg.sender] = true;

		//update candidate voteCount
		candidates[_candidateId].voteCount++;
	}
}