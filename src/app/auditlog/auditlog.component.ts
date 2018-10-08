
import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { CountryService } from '../services/country.service';
import { RouterModule } from '@angular/router';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-auditlog',
  providers: [ CountryService ],
  templateUrl: './auditlog.component.html',
  styleUrls: ['./auditlog.component.css']
})
export class AuditlogComponent implements OnInit {
  CountryList;
  constructor(private http: Http, private CountryService: CountryService,private RouterModule:RouterModule,private router: Router,private route: ActivatedRoute) { }


  ngOnInit() 
  { this.CountryList=[];
    this.CountryService.getAllaudit()
	.then((data) => 
	{ 
		this.CountryList = data;	

	}, 
	(error) => 
	{
		//alert('error');
	});	
  }
  deleteCountry(Country)
	{ 	
		var del={'id':Country.CountryId,'Name':Country.CountryName};
		this.CountryService.delete(del)
		.then((data) => 
		{
			alert('Country Deleted Successfully');
			let index = this.CountryList.indexOf(Country);
			if (index != -1) {
				this.CountryList.splice(index, 1);
			}	
    
			},(error) => 
      {
          alert('error');
      });					
			//alert(data);
		//	this.router.navigate(['/Countrylist']);
		
	}
}
