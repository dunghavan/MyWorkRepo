import {Component} from '@angular/core'
import {Person} from './person'
import {PeopleService} from './people.service'

@Component({
    selector: 'people-list',
    template: `
    <ul>
        <li *ngFor="let person of people">
            <a href="#" [routerLink]="['/person', person.id]">
                {{person.name}}
            </a>
        </li>
    </ul>
    <!-- <person-detail [person]="selectedPerson"></person-detail> -->
    `
})
export class PeopleListComponent {
    people: Person[] = [];
    selectedPerson: Person;

    constructor(private peopleService: PeopleService) { }

    ngOnInit() {
        this.people = this.peopleService.getAll();
    }

    selectPerson(person) {
        this.selectedPerson = person;
    }
}