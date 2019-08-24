using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LocalStore.Controllers
{
    public class ProductController : ApiController
    {
        // GET: api/Product
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Product/5
        public List<tblProductInfo> Get(string StoreAuthId)
        {
            List<tblProductInfo> products = null;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                products = entity.tblProductInfoes.Where(p => p.StoreAuthId== StoreAuthId).ToList();
            }
            return products;
        }

        // POST: api/Product
        public void Post([FromBody]tblProductInfo value)
        {
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                entity.tblProductInfoes.Add(value);
                entity.SaveChanges();
            }
        }

        // PUT: api/Product/5
        public void Put(string StoreAuthId, [FromBody]tblProductInfo value)
        {

            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                var products = entity.tblProductInfoes.Where(p => p.StoreAuthId == StoreAuthId).ToList<tblProductInfo>();
                if (products !=  null)
                {
                    //var product = products.Where(z => z.ProductId == value.ProductId).FirstOrDefault();
                    //if (product)


                }
                entity.SaveChanges();
            }
        }

        // DELETE: api/Product/5
        public void Delete(int id)
        {
        }
    }
}
