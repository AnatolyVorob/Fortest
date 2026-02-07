# Creative Designer Portfolio

A modern, high-performance portfolio website for web designers. Built with pure HTML, CSS, and JavaScript - no frameworks needed.

![Portfolio Preview](https://anatolyvorob.github.io/Fortest/)

## 🎨 Live Demo

**Live Site:** [https://anatolyvorob.github.io/Fortest/](https://anatolyvorob.github.io/Fortest/)

## ✨ Features

### Design
- 🎨 **Modern Dark Theme** - Sleek, professional appearance
- 🌈 **Animated Gradient Logo** - Smooth color transitions
- 📱 **Fully Responsive** - Works perfectly on all devices
- 🎭 **Smooth Animations** - 60fps performance optimized
- ✨ **Interactive Effects** - Magnetic cursor, hover states, parallax

### Sections
- 🏠 **Hero Section** - Eye-catching introduction with gradient text
- 👤 **About Section** - Skills showcase with animated tags
- 💼 **Portfolio Grid** - 6 featured projects with hover overlays
- 📧 **Contact Section** - Email and social media links
- 🦶 **Footer** - Copyright and credits

### Technical
- ⚡ **60fps Animations** - Optimized for smooth performance
- 🚀 **Fast Loading** - Lightweight, no heavy frameworks
- 🎯 **SEO Friendly** - Semantic HTML with proper meta tags
- ♿ **Accessible** - ARIA labels, keyboard navigation
- 📊 **Scroll Progress** - Visual indicator at top of page

## 🛠️ Technologies

- **HTML5** - Semantic markup
- **CSS3** - Modern styling (Grid, Flexbox, Animations)
- **JavaScript (ES6+)** - Interactive features
- **AOS Library** - Scroll-triggered animations
- **Font Awesome** - Icon library
- **Google Fonts** - Inter font family

## 📁 Project Structure

```
portfolio/
├── index.html              # Main HTML file
├── css/
│   └── style.css          # All styles (13KB optimized)
├── js/
│   └── main.js            # JavaScript functionality (9KB optimized)
├── images/
│   └── README.md          # Image guidelines
├── README.md              # This file
├── DEPLOYMENT.md          # Deployment guide
├── OPTIMIZATION_COMPLETE.md  # Performance optimization details
└── FIXES_APPLIED.md       # Recent fixes documentation
```

## 🚀 Quick Start

### Local Development

1. **Clone the repository:**
```bash
git clone https://github.com/AnatolyVorob/Fortest.git
cd Fortest
```

2. **Open in browser:**
```bash
# Using Python
python3 -m http.server 8080

# Using Node.js
npx serve

# Or simply open the file
open index.html
```

3. **Visit:** `http://localhost:8080`

### Customization

#### 1. Update Personal Information

Edit `index.html`:

```html
<!-- Hero Section (line ~52) -->
<h1 class="hero-title">
    <span class="gradient-text">Your Name</span><br>
    Web Designer
</h1>
<p class="hero-subtitle">Your tagline here</p>

<!-- About Section (line ~95) -->
<p class="lead">Your introduction...</p>

<!-- Contact Section (line ~186) -->
<a href="mailto:your@email.com" class="contact-method">
    <i class="fas fa-envelope"></i>
    <span>your@email.com</span>
</a>
```

#### 2. Update Social Links

```html
<!-- Contact Section (lines ~190-205) -->
<a href="https://behance.net/yourprofile" class="social-link">
    <i class="fab fa-behance"></i>
</a>
<a href="https://dribbble.com/yourprofile" class="social-link">
    <i class="fab fa-dribbble"></i>
</a>
<a href="https://linkedin.com/in/yourprofile" class="social-link">
    <i class="fab fa-linkedin-in"></i>
</a>
```

#### 3. Change Colors

Edit `css/style.css`:

```css
:root {
    --accent: #6366f1;        /* Your brand color */
    --bg-primary: #0a0a0a;    /* Background */
    --text-primary: #ffffff;  /* Text color */
}
```

#### 4. Add Your Project Images

Replace Unsplash URLs in `index.html` with your own:

```html
<!-- Before -->
<img src="https://images.unsplash.com/photo-..." alt="Project">

<!-- After -->
<img src="images/your-project.jpg" alt="Your Project">
```

**Recommended image specs:**
- Size: 800x500px (16:10 ratio)
- Format: JPG or WebP
- Quality: 80-85%
- File size: < 200KB

## 🌐 Deployment

### GitHub Pages (Recommended)

1. **Create GitHub repository**
2. **Push code:**
```bash
git remote add origin https://github.com/yourusername/portfolio.git
git branch -M main
git push -u origin main
```

3. **Enable GitHub Pages:**
   - Go to repository Settings
   - Navigate to Pages section
   - Select `main` branch as source
   - Click Save

4. **Your site will be live at:**
```
https://yourusername.github.io/portfolio/
```

**Detailed deployment guide:** See [DEPLOYMENT.md](DEPLOYMENT.md)

### Other Platforms

- **Netlify:** Drag and drop the folder
- **Vercel:** Import from GitHub
- **Cloudflare Pages:** Connect repository

## 📊 Performance

### Metrics
- **FPS:** 60fps (smooth animations)
- **JS Size:** 9KB (optimized)
- **CSS Size:** 13KB (optimized)
- **Load Time:** < 2 seconds
- **Lighthouse Score:** 95+ (Performance)

### Optimizations Applied
- ✅ GPU-accelerated transforms
- ✅ RequestAnimationFrame for smooth animations
- ✅ Lazy loading for images
- ✅ Optimized CSS (will-change properties)
- ✅ Simplified animations (removed laggy 3D effects)
- ✅ Lightweight parallax (hero only)

## 🎨 Features Breakdown

### 1. Animated Logo
- 3-color gradient animation
- Smooth transitions (3s infinite)
- Visible on all pages

### 2. Magnetic Cursor (Desktop Only)
- Custom cursor that follows mouse
- Enlarges on interactive elements
- Smooth easing animation

### 3. Parallax Scrolling
- Hero section moves at different speed
- Creates depth illusion
- Optimized for performance

### 4. Project Cards
- Hover effects with scale + translateY
- Image zoom on hover
- Overlay with project details
- Smooth transitions

### 5. Scroll Progress Bar
- Shows scroll position at top
- Gradient color
- Real-time updates

### 6. Smooth Scrolling
- Navigation links scroll smoothly
- Active link highlighting
- Mobile-friendly hamburger menu

## 🔧 Browser Support

- ✅ Chrome (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Edge (latest)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 📱 Mobile Optimization

### Features Disabled on Mobile:
- Custom cursor (uses default)
- Heavy parallax effects

### Features Kept on Mobile:
- ✅ Scroll animations (AOS)
- ✅ Gradient effects
- ✅ Button animations
- ✅ Responsive layout
- ✅ Hamburger menu

## 🐛 Troubleshooting

### Images Not Showing
**Solution:**
- Check image URLs are correct
- Verify images are committed to git
- Use relative paths: `images/photo.jpg` not `/images/photo.jpg`
- Hard refresh: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)

### Animations Laggy
**Solution:**
- Check browser hardware acceleration is enabled
- Close other tabs/applications
- Update browser to latest version
- Disable custom cursor on older devices

### GitHub Pages Not Updating
**Solution:**
- Wait 2-3 minutes for rebuild
- Clear browser cache
- Check GitHub Actions for build status
- Try incognito/private window

## 📚 Documentation

- **README.md** - This file (overview and quick start)
- **DEPLOYMENT.md** - Detailed deployment guide
- **OPTIMIZATION_COMPLETE.md** - Performance optimization details
- **FIXES_APPLIED.md** - Recent fixes and improvements
- **WOW_EFFECTS_COMPLETE.md** - Enhanced features documentation

## 🎓 Learning Resources

### Inspiration Sources
- [Awwwards](https://www.awwwards.com/websites/portfolio/) - Portfolio design inspiration
- [GSAP Showcase](https://gsap.com/showcase/) - Animation examples
- [Unsplash](https://unsplash.com/) - Free high-quality images

### Technologies Used
- [AOS Library](https://michalsnik.github.io/aos/) - Animate On Scroll
- [Font Awesome](https://fontawesome.com/) - Icon library
- [Google Fonts](https://fonts.google.com/) - Web fonts

## 🤝 Contributing

This is a personal portfolio template. Feel free to:
- Fork and customize for your own use
- Report issues or bugs
- Suggest improvements
- Share your customized version

## 📄 License

MIT License - Free to use for personal and commercial projects.

## 🎯 Checkpoint Information

**Version:** 3.1 (Optimized & Complete)  
**Date:** 2026-02-07  
**Git Tag:** `v3.1-checkpoint`

### What's Included in This Checkpoint:
- ✅ Fully functional portfolio website
- ✅ Optimized performance (60fps)
- ✅ Real project images (Unsplash)
- ✅ Animated logo gradient
- ✅ Smooth animations
- ✅ Complete documentation
- ✅ Deployment ready

### To Return to This Checkpoint:
```bash
git checkout v3.1-checkpoint
```

## 📧 Contact

For questions or feedback about this template:
- **Email:** hello@designer.com
- **GitHub:** [AnatolyVorob/Fortest](https://github.com/AnatolyVorob/Fortest)

---

**Built with ❤️ by Creative Designer**

**Last Updated:** 2026-02-07  
**Status:** Production Ready ✅
