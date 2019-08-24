using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LocalStore.Controllers
{
    public class AdminController : ApiController
    {
        // GET: api/Admin
        public IEnumerable<tblStoreInfo> Get()
        {
            LocalStoreEntities1 entity = new LocalStoreEntities1();
            var stores = (from e in entity.tblStoreInfoes where e.AdminApprove == 0
                          select e).ToList();

            return stores;
        }

        // GET: api/Admin/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Admin
        public void Post([FromBody]string value)
        {

        }

        // PUT: api/Admin/5
        public int Put(int id, [FromBody]tblStoreInfo value)
        {
            int result = 0;//fail
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                var foundProduct = entity.tblStoreInfoes.Where(p=>p.StoreAuthId == value.StoreAuthId).FirstOrDefault();
                if (foundProduct != null)
                {
                    foundProduct.AdminApprove = value.AdminApprove;
                    result = entity.SaveChanges();
                }
            }
            return result;
        }

        // DELETE: api/Admin/5
        public void Delete(int id)
        {

        }
    }
}
