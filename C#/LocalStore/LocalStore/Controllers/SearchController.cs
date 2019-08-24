using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using NinjaNye.SearchExtensions;

namespace LocalStore.Controllers
{
    public class SearchController : ApiController
    {
         
        public List<tblStoreInfo> Get(string searchQuery)
        {
            List<tblStoreInfo> stores = null;
            using (LocalStoreEntities1 entity = new LocalStoreEntities1())
            {
                stores = entity.tblStoreInfoes.Search(s => s.StoreName,
                                                           s => s.SearchTags).ContainingAll(searchQuery).ToList();

            }
            return stores;
        }
    }
}
