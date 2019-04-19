using Microsoft.VisualStudio.TestTools.UnitTesting;
using UnitTestProject1.Properties;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        private int expectedResult;

        [TestMethod]
        public void TestAdd()
        {
            int expectedResult, actualResult;
            int first, second;
            first = 1;
            second = 3;


            expectedResult = 4;
            actualResult = Arithemetic.add(first, second);

            Assert.AreEqual(expectedResult, actualResult);

        }
        //[TestMethod]
        //public void testAdd2()
        //{
        //    int expectedResult, actualResult;
        //    int first, second;
        //    first = 2;
        //    second = 3;

        //    Arithmetic arithemtic = new Arithmetic();
        //    expectedResult = 5;
        //    actualResult = arithemtic.add(first, second);

        //    Assert.AreEqual(expectedResult, actualResult);

        //}

    
    }
}
