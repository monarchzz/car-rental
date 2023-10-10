import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
    selector: 'app-payment',
    templateUrl: './payment.component.html',
    styleUrls: ['./payment.component.scss'],
})
export class PaymentComponent {
    constructor(private route: ActivatedRoute, private http: HttpClient) {}

    ngOnInit(): void {
        const queryString = this.route.snapshot.queryParams;

        const queryStringString = Object.keys(queryString)
            .map((key) => key + '=' + queryString[key])
            .join('&');

        this.callApiWithQueryString(queryStringString);
    }

    callApiWithQueryString(queryString: string): void {
        const apiUrl = '/api/payments/ipn?' + queryString;
        this.http.get(apiUrl).subscribe((response) => {});
    }
}
