import { NgModule, provideBrowserGlobalErrorListeners } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing-module';
import { App } from './app';
import { HomeComponent } from './pages/home-component/home-component';
import { NavbarComponent } from './components/navbar-component/navbar-component';
import { FooterComponent } from './components/footer-component/footer-component';
import { NewsCardComponent } from './components/news-card-component/news-card-component';
import { LatestNewsComponent } from './components/latest-news-component/latest-news-component';
import { MostViewedComponent } from './components/most-viewed-component/most-viewed-component';

@NgModule({
  declarations: [
    App,
    HomeComponent,
    NavbarComponent,
    FooterComponent,
    NewsCardComponent,
    LatestNewsComponent,
    MostViewedComponent,
  ],
  imports: [BrowserModule, AppRoutingModule],
  providers: [provideBrowserGlobalErrorListeners()],
  bootstrap: [App],
})
export class AppModule {}
