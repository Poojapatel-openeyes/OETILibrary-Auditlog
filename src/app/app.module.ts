
import { BrowserModule } from '@angular/platform-browser';
import { NgModule, ApplicationRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { AppComponent } from './app.component';

import { RouterModule } from '@angular/router';
import { HttpModule } from '@angular/http';
import { CountryComponent } from './country/country.component';
import { CountrylistComponent } from './countrylist/countrylist.component';

import { CountryService } from './services/country.service';
import { AuditlogComponent } from './auditlog/auditlog.component';
@NgModule({
  imports: [
    BrowserModule,
    CommonModule,
  
    HttpModule,
    FormsModule,
    RouterModule.forRoot([		
      {
        path : '',
        component : CountryComponent
      },	
      {
        path : 'Countrylist',
        component : CountrylistComponent
     
      },
      {
        path : 'Auditlog',
        component : AuditlogComponent
     
      },
      { path : 'Country/edit/:id', component : CountryComponent },
    ])
    
   
  ],
  providers: [CountryService],
  declarations: [ AppComponent, CountryComponent, CountrylistComponent, AuditlogComponent ],
  bootstrap: [ AppComponent ]
})
export class AppModule {}