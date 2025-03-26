<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <h1>Install Hyprdots</h1>
</head>
<body>
  <h1>Hyprdots Installation Guide</h1>
  <p>This guide provides step-by-step instructions for manually installing Hyprdots.</p>
  
  <h2>Step 1: Clone the Repository</h2>
  <pre><code>
git clone https://github.com/levrone24/levrone.git
  </code></pre>

  <h2>Step 2: Navigate to the Directory</h2>
  <pre><code>
cd levrone
  </code></pre>

  <h2>Step 3: Replace the Files</h2>
  <p>Manually copy and paste the configuration files from this repository to your <code>~/.config/hypr/</code> directory.</p>

  <h2>Step 4: Install Dependencies</h2>
  <p>Run the following commands to install the required packages:</p>
  <pre><code>
yay -S hellwal
sudo pacman -S rofi waybar swww neofetch
  </code></pre>
  
<h2>Step 5: Enable Scripts</h2>
  <p>Run the following commands to enable and start the required scripts and services:</p>
  <pre><code>
cd ~/.config/hypr/scripts/
chmod +x *.sh
systemctl --user enable swww.service
systemctl --user start swww.service
systemctl --user status swww.service
  </code></pre>

  <h2>Step 6: Restart Hyprland</h2>
  <p>Use the following command to restart Hyprland:</p>
  <pre><code>
hyprctl dispatch exit
  </code></pre>

  <footer>
    <p>For any issues, feel free to raise an issue in the <a href="https://github.com/levrone24/levrone/issues">GitHub repository</a>.</p>
  </footer>
</body>
</html>
