import { ApplicationRef, Component,OnInit  } from "@angular/core";
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { ApiService } from "../api.service";
import { Product } from "../product.model";
@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css']
})
export class ProductComponent implements OnInit {
  myproducts:any;
  selectedProduct: Product = { 
    id : null ,
    title:null, 
    description: null, 
    price: null
  }

constructor(ref: ApplicationRef,private http: HttpClient, private apiService: ApiService ) {
  (<any>window).appRef = ref;
/*   this.apiService.readProducts().subscribe(res=>{
    this.myproducts=res;
    console.log("hello");
  }); */
  this.getallproducts();
}
getallproducts(){
  this.apiService.readProducts().subscribe(r=>{this.myproducts=r})
}
ngOnInit() {
/*   this.apiService.readProducts().subscribe(response => {
      this.myproducts = response;
      console.log("hi")
    }); */
}
/*   getProducts() {
    //https://www.itsolutionstuff.com/post/angular-13-httpclient-http-services-tutorial-exampleexample.html
    return this.http.get(this.link);       
} */
toggleForm(){
  document.querySelector("#formContainer")?.classList.toggle("d-none")
}
createProduct(form:any){
  form.value.id = this.selectedProduct.id;
  form.value.title = this.selectedProduct.title;
  form.value.description = this.selectedProduct.description;
  form.value.price = this.selectedProduct.price;
  console.log(form.value);
  // return;
  this.apiService.createProduct(form.value).subscribe(product=>{
    console.log(product);
    alert("Product "+product.action+" successfully!!!!");
    this.getallproducts();
  });
  this.newForm();
}
cancelCreate(){
  this.newForm();
  document.querySelector("#formContainer")?.classList.toggle("d-none");
}
editProduct(p:any){
console.log(p);
document.querySelector("#formContainer")?.classList.remove("d-none");
this.selectedProduct.id = p.id;
this.selectedProduct.title = p.title;
this.selectedProduct.description = p.description;
this.selectedProduct.price = p.pprice;
}
deleteProduct(p:Product){
  if(confirm("Are you sure you want to delete this")){
    //alert("deleted");
    // 
    this.apiService.deleteProduct(p.id).subscribe(product=>{
      //console.log(product);
      alert("Product "+product.action+" successfully!!!!");
      this.getallproducts();
    });
    // 
  }
  else{
    alert("working, not deleted yet");
  }
}
newForm(){
  this.selectedProduct.id = null;
  this.selectedProduct.title = null;
  this.selectedProduct.description = null;
  this.selectedProduct.price = null;
}

}
