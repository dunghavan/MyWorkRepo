import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import {PeopleListComponent} from './person/people-list.component';
import {PeopleService} from './person/people.service'
import { PersonDetailComponent } from './person/person-detail.component';
import { routing } from './app.router'

@NgModule({
  declarations: [
    AppComponent,
    PeopleListComponent,
    PersonDetailComponent
  ],
  imports: [
    BrowserModule,
    routing
  ],
  providers: [PeopleService],
  bootstrap: [AppComponent]
})
export class AppModule { }
