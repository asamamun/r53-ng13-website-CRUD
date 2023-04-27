/* export class Product {
    public id: number;
    public name: string;
    public price: number;
    } */
    export class Product {
        constructor(public id?: number|null,
        public title?: string|null,
        public description?: string|null,
        public price?: number|null,
        public action?: string|null,
        ) { }
        }