import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule} from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SearchComponent } from './search/search.component';
import { SearchResultsComponent } from './search-results/search-results.component';
import { StoreComponent } from './store/store.component';
import { ProductsComponent } from './products/products.component';
import { FuzzySearchComponent } from './fuzzy-search/fuzzy-search.component';
import { ProductComponent } from './product/product.component';

import { DotnetService } from './services/dotnet.service';

@NgModule({
  declarations: [
    AppComponent,
    SearchComponent,
    SearchResultsComponent,
    StoreComponent,
    ProductsComponent,
    FuzzySearchComponent,
    ProductComponent
  ],
  imports: [
    BrowserModule,
    ReactiveFormsModule,
    FormsModule,
    AppRoutingModule,
    NgbModule,
    HttpClientModule,
    RouterModule.forRoot([
      {
        path: 'search',
        component: FuzzySearchComponent
      },
      {
        path: 'store',
        component: StoreComponent
      },
      {
        path: 'products',
        component: ProductsComponent
      },
   
   ])
  ],
  providers: [DotnetService],
  bootstrap: [AppComponent]
})
export class AppModule { }
