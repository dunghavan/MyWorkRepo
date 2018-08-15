import {Person } from './person'
import {Component, Input} from '@angular/core'
import { ActivatedRoute, Router } from '@angular/router';
import {PeopleService} from './people.service'

@Component({
    selector: 'person-detail',
    template: `
    <section *ngIf="person">
        <h3> Details selected person: </h3>
        <h2> Name: {{person.name}}, Age: {{person.age}} </h2>
    </section>
    <button (click)="backToList()">Back To List</button>
    `
})
export class PersonDetailComponent {
    person: Person;
    sub: any;

    constructor(private peopleService: PeopleService, private activeRoute: ActivatedRoute,
        private router: Router){}

    ngOnInit(){
        this.sub = this.activeRoute.params.subscribe(params => {
            let id = Number.parseInt(params['id']);
            this.person = this.peopleService.getPerson(id);
        });
    }

    ngOnDestroy(){
        this.sub.unsubscribe();
    }

    backToList() {
        //this.router.navigate(['/person']);
        window.history.back();
    }
}