contract test1 {
    constructor() view {}
}
contract test2 {
    constructor() pure {}
}
// ----
// TypeError: (21-42): Constructor must be payable or non-payable, but is "view".
// TypeError: (66-87): Constructor must be payable or non-payable, but is "pure".
