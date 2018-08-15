import {Person} from './person'


const PEOPLE = [{id: 1, name: 'Dunghv', age: 12}, {id: 2, name: 'BaoHV', age: 11}, {id: 3, name: 'SanhCX', age: 15},
                {id: 4, name: 'SinhND', age: 25}];
export class PeopleService {
    getAll(): Person[] {
        return PEOPLE;
    }

    getPerson(id: number){
        return PEOPLE.find(p => p.id === id);
    }
}