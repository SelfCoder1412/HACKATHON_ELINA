import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DotnetService {

  private base : string = "http://localhost:51911";
  private httpOptions = {
    headers : new  HttpHeaders( {
      "content-type" : "application/json"
    })
  }

  constructor(
    private http : HttpClient
  ) { }

  public registerStore(data){
    return this.post('/api/StoreRegistration', data);
  }

  private post(url, data){
    return this.http.post(this.base + url, data, this.httpOptions)
            .toPromise()
            .then(
              (res) => {
                return res;
              }
             ).catch(
               
             )
  }
}