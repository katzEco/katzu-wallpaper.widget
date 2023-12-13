# Developed by Suphakit P.
# GitHub: https://github.com/dethMastery/
# website: https://katzEco.github.io/
# Github Repo: https://github.com/katzEco/katzu-wallpaper.widget

refreshFrequency: false

style: """
#background
  width: 100vw;
  height: 100vh;

#background iframe
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100vw;
  height: 100vh;
  transform: translate(-50%, -50%);
  z-index: -1;

.hover
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1;
"""

render: -> """<div id="background">
  <iframe src="https://www.youtube.com/embed/jfKfPfyJRdk?&autoplay=1&mute=1&loop=1"></iframe>
</div>
<div class="hover">

</div>"""