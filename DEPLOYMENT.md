# Portfolio Website - Deployment Guide

## 🚀 Quick Deployment to GitHub Pages

### Option 1: Automated Script (Recommended)

Run the deployment script:

```bash
cd ~/.openclaw/workspace/portfolio-project
./deploy.sh
```

The script will:
1. Configure git (if needed)
2. Ask for your GitHub repository URL
3. Push the code
4. Show you the GitHub Pages URL

### Option 2: Manual Deployment

#### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `portfolio` (or any name you prefer)
3. **Important:** Do NOT initialize with README, .gitignore, or license
4. Click "Create repository"

#### Step 2: Push Code

```bash
cd ~/.openclaw/workspace/portfolio-project

# Add your repository as remote
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git

# Push to GitHub
git branch -M main
git push -u origin main
```

#### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll to **Pages** section (left sidebar)
4. Under **Source**, select `main` branch
5. Click **Save**

#### Step 4: Access Your Site

Wait 1-2 minutes, then visit:
```
https://YOUR_USERNAME.github.io/portfolio/
```

---

## 🎨 Customization Before Deployment

### 1. Update Personal Information

Edit `index.html`:

```html
<!-- Hero Section -->
<h1 class="hero-title">
    <span class="gradient-text">Your Name</span><br>
    Web Designer
</h1>
<p class="hero-subtitle">Your tagline here</p>

<!-- About Section -->
<p class="lead">Your introduction...</p>

<!-- Contact Section -->
<a href="mailto:your@email.com" class="contact-method">
    <i class="fas fa-envelope"></i>
    <span>your@email.com</span>
</a>
```

### 2. Update Social Links

```html
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

### 3. Add Real Project Images

Replace icon placeholders with images:

```html
<!-- Before -->
<div class="image-placeholder">
    <i class="fas fa-laptop-code"></i>
</div>

<!-- After -->
<img src="images/project-1.jpg" alt="Project Name">
```

### 4. Change Colors

Edit `css/style.css`:

```css
:root {
    --accent: #6366f1;        /* Your brand color */
    --bg-primary: #0a0a0a;    /* Background */
}
```

### 5. Update Projects

Edit project details in `index.html`:

```html
<div class="project-overlay">
    <h3>Your Project Name</h3>
    <p>Your project description</p>
    <a href="https://your-project-url.com" class="project-link">
        View Project <i class="fas fa-arrow-right"></i>
    </a>
</div>
```

---

## 🔧 Testing Locally

Before deploying, test locally:

```bash
cd ~/.openclaw/workspace/portfolio-project

# Start local server
python3 -m http.server 8080

# Visit in browser
# http://localhost:8080
```

---

## 📱 Mobile Testing

Test responsive design:

1. Open browser DevTools (F12)
2. Click device toolbar icon
3. Test different screen sizes:
   - Mobile: 375px, 414px
   - Tablet: 768px, 1024px
   - Desktop: 1440px, 1920px

---

## 🎯 Custom Domain (Optional)

### Add Custom Domain to GitHub Pages

1. Buy a domain (Namecheap, Google Domains, etc.)
2. In your repository Settings → Pages:
   - Enter your custom domain
   - Click Save
3. In your domain registrar, add DNS records:
   ```
   Type: A
   Name: @
   Value: 185.199.108.153
   
   Type: A
   Name: @
   Value: 185.199.109.153
   
   Type: A
   Name: @
   Value: 185.199.110.153
   
   Type: A
   Name: @
   Value: 185.199.111.153
   
   Type: CNAME
   Name: www
   Value: YOUR_USERNAME.github.io
   ```
4. Wait 24-48 hours for DNS propagation

---

## 🐛 Troubleshooting

### Site Not Loading

**Problem:** 404 error after enabling Pages

**Solution:**
- Wait 2-3 minutes for initial deployment
- Check Settings → Pages shows green checkmark
- Verify branch is set to `main`

### Images Not Showing

**Problem:** Images don't load on GitHub Pages

**Solution:**
- Use relative paths: `images/photo.jpg` not `/images/photo.jpg`
- Check file names match exactly (case-sensitive)
- Ensure images are committed to git

### Animations Not Working

**Problem:** AOS animations don't trigger

**Solution:**
- Check browser console for errors
- Verify AOS library is loaded (check Network tab)
- Clear browser cache

### Mobile Menu Not Working

**Problem:** Hamburger menu doesn't open

**Solution:**
- Check JavaScript console for errors
- Verify `main.js` is loaded
- Test in different browsers

---

## 📊 Analytics (Optional)

Add Google Analytics:

1. Create GA4 property at https://analytics.google.com
2. Get your Measurement ID (G-XXXXXXXXXX)
3. Add to `index.html` before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🔄 Updating Your Site

After making changes:

```bash
cd ~/.openclaw/workspace/portfolio-project

# Stage changes
git add .

# Commit
git commit -m "Update portfolio content"

# Push to GitHub
git push origin main
```

GitHub Pages will automatically rebuild (1-2 minutes).

---

## ✅ Pre-Deployment Checklist

- [ ] Updated personal information (name, email)
- [ ] Added real project descriptions
- [ ] Updated social media links
- [ ] Tested on mobile devices
- [ ] Checked all links work
- [ ] Verified animations work
- [ ] Tested in multiple browsers
- [ ] Optimized images (if added)
- [ ] Updated README with your info
- [ ] Committed all changes to git

---

## 🎉 You're Ready!

Your portfolio is ready to deploy. Run:

```bash
cd ~/.openclaw/workspace/portfolio-project
./deploy.sh
```

Or follow the manual steps above.

**Questions?** Check the main README.md for more details.
