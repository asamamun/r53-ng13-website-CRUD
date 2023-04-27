import { Injectable } from '@angular/core';
import { Product } from './product.model';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class ApiService {

  PHP_API_SERVER = "http://localhost/Round53/NG/website/API";
	constructor(private httpClient: HttpClient) {}
	
	readProducts(){
    return this.httpClient.get(`${this.PHP_API_SERVER}/productapi.php`);
  }
  singleProducts(id:any){
	return this.httpClient.get(`${this.PHP_API_SERVER}/productapi.php?id=${id}`);
  }
	createProduct(product: Product): Observable<Product>{
		return this.httpClient.post<Product>(`${this.PHP_API_SERVER}/createproduct.php`, product);
	}
	updateProduct(product: Product){
		return this.httpClient.put<Product>(`${this.PHP_API_SERVER}/update_product.php`, product);
	}
	deleteProduct(id: any){
		return this.httpClient.delete<Product>(`${this.PHP_API_SERVER}/delete_product.php?id=${id}`);
	}
}
