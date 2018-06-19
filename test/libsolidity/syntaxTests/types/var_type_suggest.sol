contract C {
    function g(uint x) internal pure returns (uint) {
        return x;
    }
    function f() internal pure {
        var i = 31415;
        var t = "string";
        var g2 = g;
    }
}
// ----
// Warning: (132-145): The type of this variable was inferred as uint16, which can hold values between 0 and 65535. This is probably not desired. Use an explicit type to silence this warning.
// SyntaxError: (132-137): Use of the "var" keyword is disallowed. Use explicit type uint16 instead.
// SyntaxError: (155-160): Use of the "var" keyword is disallowed. Use explicit type string instead.
// SyntaxError: (181-187): Use of the "var" keyword is disallowed. Use explicit type function (uint256) pure returns (uint256) instead.
