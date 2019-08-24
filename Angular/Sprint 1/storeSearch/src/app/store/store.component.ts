import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';

import { DotnetService } from './../services/dotnet.service';

@Component({
  selector: 'app-store',
  templateUrl: './store.component.html',
  styleUrls: ['./store.component.css']
})
export class StoreComponent implements OnInit {
  private addStore : any;
  constructor(
    private fb : FormBuilder,
    private service : DotnetService
  ) {}

  ngOnInit() {
    this.loadForm();
  }

  loadForm(){
    this.addStore = this.fb.group(
      {
        StoreName : [ '', Validators.required ],
        StoreAddress : [ '', Validators.required ],
        Pincode : [ '', Validators.required ],
        SearchTags : [ '', Validators.required ],
        AdminApprove : [ '' ]
      }
    );
  }

  onSubmit() { 
    if(this.addStore.valid){
      this.service.registerStore(this.addStore.value)
        .then(
          (res) => {
            alert('Stroe registered successfully');
          }
        ).catch(
          (err) => {
            alert('Something went wrong');
          }
        )
    }
  }

 

}
