import {Routes, RouterModule} from '@angular/router'
import {PeopleListComponent} from './person/people-list.component'
import { PersonDetailComponent } from './person/person-detail.component';

const routes: Routes = [
    {
        path: 'person',
        component: PeopleListComponent
    },
    {
        path: 'person/:id',
        component: PersonDetailComponent
    },
    {
        path: '',
        redirectTo: '/person',
        pathMatch: 'full'
    }
]

export const routing = RouterModule.forRoot(routes);