import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-search-results',
  templateUrl: './search-results.component.html',
  styleUrls: ['./search-results.component.css']
})
export class SearchResultsComponent implements OnInit {
  @Input() passData: string;
  constructor() { }

 
  searchVal: string;
  
  ngOnInit() {
   this.searchVal = this.passData;
   console.log(this.searchVal); 
  }

  ngAfterViewInit() {
    this.searchVal = this.passData;
   console.log(this.searchVal); 
  }

  //onsole.log(searchVal); 
  

  stores = {
    "tblStoreInfo": [
      {
        "AdminApprove": "1",
        "Pincode": "600100",
        "SearchTags": "Cement",
        "StoreAddress": "Chennai",
        "StoreAuthId": "GoodLuckStore@LocalStore.com",
        "StoreId": "1",
        "StoreName": "Good Luck Store"
      },
      {
        "AdminApprove": "0",
        "Pincode": "600100",
        "SearchTags": "Steel",
        "StoreAddress": "Chennai",
        "StoreAuthId": "NewStore@LocalStore.com",
        "StoreId": "2",
        "StoreName": "New Store"
      },
      {
        "AdminApprove": "0",
        "Pincode": "600100",
        "SearchTags": "hardware,cement,stones",
        "StoreAddress": "Chennai",
        "StoreAuthId": "KarthikTraders@LocalStore.com",
        "StoreId": "3",
        "StoreName": "Karthik Traders"
      }
    ]
  };
}
