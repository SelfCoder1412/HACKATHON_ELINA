using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LocalStore.Controllers
{
    public class StoreRegistrationController : ApiController
    {
        // GET api/values
        public IEnumerable<tblStoreInfo> Get()
        {
            LocalStoreEntities1 entity = new LocalStoreEntities1();
            var stores = (from e in entity.tblStoreInfoes
                          select e).ToList();

            return stores;
        }

        // GET api/values/5
        public tblStoreInfo Get(int id)
        {
            tblStoreInfo store = null;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                store = entity.tblStoreInfoes.Where(p => p.StoreId == id).FirstOrDefault();
            }
            return store;
        }

        // POST api/values
        public string Post([FromBody]tblStoreInfo value)
        {
            value.StoreAuthId = value.StoreName.Replace(" ",string.Empty) + "@LocalStore.com"  ;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
               entity.tblStoreInfoes.Add(value);
                entity.SaveChanges();
            }
            return value.StoreAuthId;
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
