//using NinjaNye.SearchExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LocalStore.Controllers
{
    public class FuzzyController : ApiController
    {
        // GET: api/Fuzzy
        public IEnumerable<string> Get()
        {
            return null;
        }

        // GET: api/Fuzzy/5
        public List<tblStoreInfo> Get(int searchId)
        {
            List<tblStoreInfo> stores = null;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                //stores = entity.tblStoreInfoes.Search(s => s.StoreName,
                //                                           s => s.SearchTags).ContainingAll(searchQuery).ToList();

            }
            return stores;
        }

        // POST: api/Fuzzy
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Fuzzy/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Fuzzy/5
        public void Delete(int id)
        {
        }
    }
}
