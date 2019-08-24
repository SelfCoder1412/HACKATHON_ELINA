using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace LocalStore.Controllers
{
    
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
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
        public tblStoreInfo Get(string StoreAuthId)
        {
            tblStoreInfo store = null;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                store = entity.tblStoreInfoes.Where(p => p.StoreAuthId == StoreAuthId).FirstOrDefault();
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
        public void Put(string StoreAuthId, [FromBody]tblStoreInfo value)
        {
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                var oldStore = entity.tblStoreInfoes.Where(p => p.StoreAuthId == StoreAuthId).FirstOrDefault();
                if (oldStore != null)
                {
                    oldStore.StoreName = value.StoreName;
                    oldStore.StoreAddress = value.StoreAddress;
                    oldStore.Pincode = value.Pincode;
                    oldStore.SearchTags = value.SearchTags;
                    entity.SaveChanges();
                }
                
            }
        }

        // DELETE api/values/5
        public void Delete(string StoreAuthId)
        {
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                var oldStore = entity.tblStoreInfoes.Where(p => p.StoreAuthId == StoreAuthId).FirstOrDefault();
                entity.tblStoreInfoes.Remove(oldStore);
                entity.SaveChanges();
            }
        }
    }
}
