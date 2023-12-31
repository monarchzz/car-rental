export interface Showroom {
    id: string;
    name: string;
    description?: string;
    numberOSynda: number;
    location: Location;
    images: string[];
}

export interface ShowroomPagination {
    pageSize: number;
    pageNumber: number;
    totalRow: number;
}
