// TODO real tests
var assert = require('assert');
var jison2json = require('./jison2json');
var grammar = "%% foo: bar { return true; };";

var json = jison2json.convert(grammar);
var expected = {
  "bnf": {
    "foo": [
      [
        "bar",
        " return true; "
      ]
    ]
  }
};
var rv = JSON.parse(json);
assert.deepEqual(rv, expected);
