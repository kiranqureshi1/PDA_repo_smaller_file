var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  }
)
  it('it should add numbers', function(){
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.add(4);
    actual = calculator.runningTotal;
    expected = 5;
    assert.strictEqual(actual, expected);
  });
  it('it should subtract numbers', function(){
    calculator.numberClick(7);
    calculator.operatorClick('-');
    calculator.subtract(4)
    actual = calculator.runningTotal;
    expected = 3
    assert.strictEqual(actual, expected);
  });
  it('it should multiply numbers', function(){
    calculator.numberClick(3);
    calculator.operatorClick('*');
    calculator.multiply(5)
    actual = calculator.runningTotal;
    expected = 15
    assert.strictEqual(actual, expected);
  });
  it('it should divide numbers', function(){
    calculator.numberClick(21);
    calculator.operatorClick('/');
    calculator.divide(7)
    actual = calculator.runningTotal;
    expected = 3
    assert.strictEqual(actual, expected);
  });

   it(‘it should concatenate multiple number button clicks’, function(){
     calculator.numberClick(1);
     calculator.numberClick(2);
     calculator.numberClick(2);
     calculator.numberClick(4);
     const actual = calculator.runningTotal;
     const expected = 1224;
     assert.strictEqual(actual, expected);
   });

   it(‘it should chain multiple operations together’, function(){
     calculator.numberClick(3);
     calculator.operatorClick(“+”);
     calculator.numberClick(7);
     calculator.operatorClick(“*”);
     calculator.numberClick(3);
     calculator.operatorClick(“=”);
     const actual = calculator.runningTotal;
     const expected = 30;
     assert.strictEqual(actual, expected);
   });

   it(‘it should clear the running total without affecting the calculation’, function(){
     calculator.numberClick(7);
     calculator.operatorClick(“*”);
     calculator.numberClick(2);
     calculator.operatorClick(“+”);
     calculator.numberClick(2);
     calculator.clearClick();
     const actual = calculator.previousTotal;
     const expected = 14;
     assert.strictEqual(actual, expected);
   });

});
