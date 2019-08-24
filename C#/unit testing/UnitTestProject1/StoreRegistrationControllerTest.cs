using LocalStore.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTestProject1
{
    [TestClass]
    public class StoreRegistrationControllerTest
    {
        StoreRegistrationController storeRegisterController;

        [TestInitialize]
        public void Initalize()
        {
            storeRegisterController = new StoreRegistrationController();
        }


        [TestMethod]
        public void GetTestWithOutParams()
        {
            Assert.IsNotNull(storeRegisterController.Get());
        }
        
        [TestMethod]
        public void GetTestWithParams()
        {
            Assert.IsNotNull(storeRegisterController.Get(1));
        }
    }
}
