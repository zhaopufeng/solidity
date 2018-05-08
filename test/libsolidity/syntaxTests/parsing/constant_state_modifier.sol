contract C {
	uint s;
	// this test should fail starting from 0.5.0
	function f() public constant returns (uint) {
		return s;
	}
}
// ----
// ParserError: (89-97): The state mutability modifier "constant" was removed in 0.5.0. Use "view" or "pure" instead.
