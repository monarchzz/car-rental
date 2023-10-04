import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { Observable, forkJoin } from 'rxjs';
import { ShowroomService } from './showroom.service';

@Injectable({
    providedIn: 'root'
})

export class ShowroomsResolver implements Resolve<any>
{
    /**
     * Constructor
     */
    constructor(private _showroomService: ShowroomService) {
    }

    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------

    /**
     * Resolver
     *
     * @param route
     * @param state
     */
    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> {
        return forkJoin([
            this._showroomService.getShowrooms(),
        ]);
    }
}
