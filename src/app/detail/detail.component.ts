import { ApplicationRef, Component, OnInit } from "@angular/core";
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ActivatedRoute, ParamMap } from '@angular/router';
import { ApiService } from "../api.service";
@Component({
  selector: 'app-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css']
})
export class DetailComponent implements OnInit {
  public id: any;
  public info: any = null;
  constructor(public router: ActivatedRoute, ref: ApplicationRef, private http: HttpClient, private apiService: ApiService) {
    (<any>window).appRef = ref;
    this.id = this.router.snapshot.paramMap.get('id')
    this.productDetails(this.id)
  }
  productDetails(id: number) {
    //console.log(id);
    this.apiService.singleProducts(id).subscribe(r=>{
      this.info=r;
      this.info = this.info[0]
       console.log(this.info)
      })
  }

  ngOnInit(): void {
  }


}
