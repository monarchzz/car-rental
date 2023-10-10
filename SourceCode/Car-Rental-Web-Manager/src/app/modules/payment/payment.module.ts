import { NgModule } from '@angular/core';
import { PaymentComponent } from './payment.component';
import { SharedModule } from 'app/shared/shared.module';
import { RouterModule } from '@angular/router';
import { paymentRoutes } from './payment.routing';

@NgModule({
    declarations: [PaymentComponent],
    imports: [RouterModule.forChild(paymentRoutes), SharedModule],
})
export class PaymentModule {}
