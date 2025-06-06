import { Component, OnInit } from '@angular/core';
import { ThemeService } from './services/theme.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'PayFlow Manager';

  constructor(private themeService: ThemeService) {}

  ngOnInit() {
    // Subscribe to theme changes
    this.themeService.darkMode$.subscribe(isDarkMode => {
      document.documentElement.setAttribute('data-bs-theme', isDarkMode ? 'dark' : 'light');
    });
  }
}
