using LocalStore;
using LocalStore.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Web.Http;

namespace UnitTestProject1
{
    [TestClass]
    public class ProductControllerTest
    {
        ProductController productController;

        [TestInitialize]
        public void Initalize()
        {
            productController = new ProductController();
        }

        [TestMethod]
        public void GetTest()
        {
            string authoId = "GoodLuckStore@LocalStore.com";
            Assert.IsNotNull(productController.Get(authoId));
        }

        [TestMethod]
        public void PostTest()
        {
            tblProductInfo productDetails = new tblProductInfo();
            productDetails.BrandName = "Test Brand";
            productDetails.Category = "TestCategory";
            productDetails.Price = 20;
            productDetails.Quantity = 2;
            productDetails.StoreAuthId = "Test@gmail.com";
            productController.Post(productDetails);
            Assert.IsTrue(true);
        }
    }
}
