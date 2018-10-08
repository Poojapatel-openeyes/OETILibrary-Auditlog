import { Injectable } from '@angular/core';
import { Http } from '@angular/http';




@Injectable()
export class PayService {


  constructor( private http: Http) { }
  add(RegisterEntity)
 {    debugger
	let promise = new Promise((resolve, reject) => {
    this.http.post('http://localhost/paypal/api/Register/addRegister', RegisterEntity, "{'Content-Type': 'application/json','Accept': 'application/json'}")
      .toPromise()
      .then( 
        res => { // Success 
			let result = res.json();
		
		  resolve(res.json());
        },
        msg => { // Error
      reject(msg.json());
   
    
        }
      );
	});		
	return promise;
  }

}
