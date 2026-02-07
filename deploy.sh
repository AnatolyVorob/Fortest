#!/bin/bash
# Portfolio Deployment Script for GitHub Pages

echo "🚀 Portfolio Deployment to GitHub Pages"
echo "========================================"
echo ""

# Check if git is configured
if ! git config user.name > /dev/null 2>&1; then
    echo "⚠️  Git user not configured. Setting up..."
    read -p "Enter your name: " git_name
    read -p "Enter your email: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
    echo "✅ Git configured"
fi

# Get repository URL
echo ""
echo "📝 GitHub Repository Setup"
echo "1. Go to https://github.com/new"
echo "2. Create a new repository named 'portfolio' (or any name)"
echo "3. Do NOT initialize with README, .gitignore, or license"
echo ""
read -p "Enter your GitHub repository URL (e.g., https://github.com/username/portfolio.git): " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ Repository URL is required"
    exit 1
fi

# Add remote and push
echo ""
echo "📤 Pushing to GitHub..."
cd ~/.openclaw/workspace/portfolio-project

# Check if remote already exists
if git remote | grep -q "origin"; then
    git remote remove origin
fi

git remote add origin "$repo_url"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Code pushed successfully!"
    echo ""
    echo "🌐 Enable GitHub Pages:"
    echo "1. Go to your repository on GitHub"
    echo "2. Click 'Settings' tab"
    echo "3. Scroll to 'Pages' section (left sidebar)"
    echo "4. Under 'Source', select 'main' branch"
    echo "5. Click 'Save'"
    echo ""
    echo "⏳ Wait 1-2 minutes for deployment"
    echo ""
    
    # Extract username and repo name from URL
    username=$(echo "$repo_url" | sed -E 's/.*github\.com[:/]([^/]+)\/.*/\1/')
    reponame=$(echo "$repo_url" | sed -E 's/.*\/([^/]+)(\.git)?$/\1/' | sed 's/\.git$//')
    
    echo "🎉 Your site will be live at:"
    echo "   https://$username.github.io/$reponame/"
    echo ""
else
    echo "❌ Push failed. Please check your credentials and try again."
    exit 1
fi
