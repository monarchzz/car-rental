import { Image } from "app/modules/types/image.type";

export interface Customer {
    id: string,
    name: string,
    gender: string,
    phone: string,
    avatarUrl: string,
    address: string,
    status: boolean,
    isLicenseValid: boolean,
    bankName: string,
    bankAccountNumber: string,
    wallet: {
        id: string,
        balance: number,
        status: string,
    },
    images: Image[]
}

export interface CustomerPagination {
    pageSize: number;
    pageNumber: number;
    totalRow: number;
}