import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';

import { DotnetService } from './../services/dotnet.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent implements OnInit {
  private addProduct: any;
  constructor(
    private fb: FormBuilder,
    private service: DotnetService
  ) { }

  ngOnInit() {
    this.loadForm();
  }

  message = '';
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


  loadForm() {
    this.addProduct = this.fb.group(
      {
        Category: ['', Validators.required],
        BrandName: ['', Validators.required],
        Price: ['', Validators.required],
        Quantity: ['', Validators.required],
        StoreAuthId: ['', Validators.required]
      }
    );
  }

  onSubmit() {
    var _this = this;
    if (this.addProduct.valid) {
      this.service.registerProduct(this.addProduct.value)
        .then(
          (res) => {
            _this.message = 'Product registered successfully';
          }
        ).catch(
          (err) => {
            _this.message = 'Something went wrong';
          }
        )
    }
  }

}
