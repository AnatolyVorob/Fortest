# Creative Designer Portfolio

A modern, minimalist portfolio website for web designers. Built with pure HTML, CSS, and JavaScript - no frameworks needed.

## ✨ Features

- **Modern Design** - Clean, minimalist aesthetic with smooth animations
- **Fully Responsive** - Works perfectly on desktop, tablet, and mobile
- **Smooth Animations** - Scroll-triggered animations using AOS library
- **Interactive Elements** - Hover effects, project overlays, custom cursor
- **Fast Loading** - Lightweight, no heavy frameworks
- **SEO Friendly** - Semantic HTML with proper meta tags

## 🎨 Sections

1. **Hero** - Eye-catching introduction with gradient text and CTA buttons
2. **About** - Brief introduction with skills showcase
3. **Portfolio** - Grid of 6 featured projects with hover overlays
4. **Contact** - Email and social media links
5. **Footer** - Copyright and credits

## 🛠️ Technologies

- HTML5
- CSS3 (CSS Variables, Flexbox, Grid)
- JavaScript (ES6+)
- [AOS](https://michalsnik.github.io/aos/) - Animate On Scroll library
- [Font Awesome](https://fontawesome.com/) - Icons
- [Google Fonts](https://fonts.google.com/) - Inter font family

## 🚀 Quick Start

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/yourusername/portfolio.git
cd portfolio
```

2. Open `index.html` in your browser:
```bash
# Using Python
python3 -m http.server 8000

# Using Node.js
npx serve

# Or simply open the file
open index.html
```

3. Visit `http://localhost:8000` in your browser

### Customization

#### Update Content

1. **Personal Information** - Edit `index.html`:
   - Change name in hero section
   - Update about text
   - Modify project details
   - Add your email and social links

2. **Colors** - Edit `css/style.css` CSS variables:
```css
:root {
    --accent: #6366f1;        /* Primary accent color */
    --bg-primary: #0a0a0a;    /* Background color */
    --text-primary: #ffffff;   /* Text color */
}
```

3. **Projects** - Replace placeholder projects in `index.html`:
   - Update project titles
   - Change descriptions
   - Add real project images
   - Update links

#### Add Images

Replace the icon placeholders with real images:

1. Add images to `images/` folder
2. Update HTML:
```html
<div class="project-image">
    <img src="images/project-1.jpg" alt="Project Name">
    <!-- Remove .image-placeholder div -->
</div>
```

## 📁 Project Structure

```
portfolio/
├── index.html          # Main HTML file
├── css/
│   └── style.css      # All styles
├── js/
│   └── main.js        # JavaScript functionality
├── images/            # Project images (add your own)
└── README.md          # This file
```

## 🎯 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## 📝 Customization Guide

### Change Color Scheme

Edit CSS variables in `style.css`:

```css
/* Dark theme (default) */
--bg-primary: #0a0a0a;
--text-primary: #ffffff;

/* Light theme */
--bg-primary: #ffffff;
--text-primary: #0a0a0a;
```

### Add More Projects

Copy a project card in `index.html`:

```html
<div class="project-card" data-aos="fade-up">
    <div class="project-image">
        <div class="image-placeholder">
            <i class="fas fa-icon-name"></i>
        </div>
        <div class="project-overlay">
            <h3>Project Name</h3>
            <p>Project description</p>
            <a href="#" class="project-link">View Project <i class="fas fa-arrow-right"></i></a>
        </div>
    </div>
    <div class="project-info">
        <span class="project-category">Category</span>
        <h3>Project Name</h3>
    </div>
</div>
```

### Modify Animations

Adjust AOS settings in `main.js`:

```javascript
AOS.init({
    duration: 800,    // Animation duration
    easing: 'ease',   // Easing function
    once: true,       // Animate only once
    offset: 100       // Trigger offset
});
```

## 🌐 Deployment

### GitHub Pages

1. Create a new repository on GitHub
2. Push your code:
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/portfolio.git
git push -u origin main
```

3. Enable GitHub Pages:
   - Go to repository Settings
   - Navigate to Pages section
   - Select `main` branch as source
   - Click Save

4. Your site will be live at: `https://yourusername.github.io/portfolio`

### Other Platforms

- **Netlify**: Drag and drop the folder
- **Vercel**: Import from GitHub
- **Cloudflare Pages**: Connect repository

## 📄 License

MIT License - feel free to use this template for your own portfolio!

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📧 Contact

For questions or feedback, reach out at hello@designer.com

---

**Built with ❤️ by Creative Designer**
