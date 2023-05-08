import { Routes } from '@angular/router';

import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';
 import { ContactComponent } from './contact/contact.component';
import { ErrorComponent } from './error/error.component';
import { ProductComponent } from './product/product.component';
import { DetailComponent } from './detail/detail.component';

 
export const appRoutes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'about', component: AboutComponent }, 
  { path: 'product', component: ProductComponent },
  { path: 'details/:id', component: DetailComponent },
  { path: 'contact', component: ContactComponent }, 
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: '**', component: ErrorComponent }
];