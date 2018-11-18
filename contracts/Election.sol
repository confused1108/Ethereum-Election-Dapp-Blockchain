pragma solidity ^0.4.2;

	/**
	 * The contractName contract does this and that...
	 */
contract Election {

	// Model a Candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}
	//Fetch Candidate
	mapping (uint => Candidate) public candidates;
	//Store Candidates Count
	uint public candidatesCount;

	function Election () public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate (string _name) private {
		candidatesCount++;
		candidates[candidatesCount]= Candidate(candidatesCount, _name, 0);
	}
			
}
