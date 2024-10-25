using NUnit.Framework;

namespace Lab_4.StepDefinitions
{
    [Binding]
    public class CalculatorStepDefinitions
    {
        private int _firstNumber;
        private int _secondNumber;
        private int _result;
        private Calculator _calculator;

        public CalculatorStepDefinitions()
        {
            _calculator = new Calculator();
        }

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredNumberIntoTheCalculator(int number)
        {
            if (_firstNumber == 0)
                _firstNumber = number;
            else
                _secondNumber = number;
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            _result = _calculator.Add(_firstNumber, _secondNumber);
        }

        [When(@"I press subtract")]
        public void WhenIPressSubtract()
        {
            _result = _calculator.Subtract(_firstNumber, _secondNumber);
        }

        [When(@"I press multiply")]
        public void WhenIPressMultiply()
        {
            _result = _calculator.Multiply(_firstNumber, _secondNumber);
        }

        [When(@"I press divide")]
        public void WhenIPressDivide()
        {
            _result = _calculator.Divide(_firstNumber, _secondNumber);
        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBe(int expectedResult)
        {
            Assert.AreEqual(expectedResult, _result);
        }
    }
}
