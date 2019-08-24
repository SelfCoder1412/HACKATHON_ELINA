import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-fuzzy-search',
  templateUrl: './fuzzy-search.component.html',
  styleUrls: ['./fuzzy-search.component.css']
})
export class FuzzySearchComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  searchData: string;

  receiveMessage($event) {
    this.searchData = $event;
    console.log(this.searchData);
  }
}
