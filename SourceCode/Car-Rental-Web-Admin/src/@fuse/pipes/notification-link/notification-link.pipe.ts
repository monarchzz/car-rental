import { Pipe, PipeTransform } from '@angular/core';
import { NotificationData } from 'app/modules/types/notification.type';

@Pipe({
    name: 'notificationLink'
})
export class NotificationLinksPipe implements PipeTransform {
    transform(data: NotificationData): string {
        if (data.type === 'Order') {
            return '/comercials/orders/' + data.link;
        } if (data.type === 'CustomerLicense') {
            return '/accounts/customers/' + data.link;
        }
        return null;
    }
}