# SceneKit-Sample1



# Using GitHub with Xcode 6

Today I tried to use Xcode 6’s built-in git support to push to my remote repository on GitHub, and couldn’t figure it out. I also couldn’t find anything for Xcode 6 and GitHub when I tried googling it, and only managed to find stuff for Xcode 5\. After an hour or so, I finally managed to get it working, and it’s actually pretty slick. If you’re like me and have been struggling to get your project setup, then follow this quick guide. I’ll run through it from scratch.

#### Make A New Xcode Project

Open Xcode, start a new project, and then pick a template. For simplicity, I’m just going to make a Single View Application. When you’re prompted to choose a place to save your new project, make sure to check “Create git repository on”, followed by your choice. It’s probably going to be something like “My Mac”:

<figure name="2516" id="2516" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 700px; max-height: 137px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*MjqICEacGGUwEa2nc1hIJQ.png" data-width="702" data-height="137" data-action="zoom" data-action-value="1*MjqICEacGGUwEa2nc1hIJQ.png" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*MjqICEacGGUwEa2nc1hIJQ.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="13"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*MjqICEacGGUwEa2nc1hIJQ.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*MjqICEacGGUwEa2nc1hIJQ.png"></noscript>

</div>

</div>

</figure>

When you hit create, Xcode will automatically perform an initial commit for you. Let’s modify our ViewController to print a message, just so we have a change to commit ourselves:

<figure name="bc5e" id="bc5e" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 700px; max-height: 448px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*IbQUxQMfIBabZkknJ8ZxrA.png" data-width="707" data-height="452" data-action="zoom" data-action-value="1*IbQUxQMfIBabZkknJ8ZxrA.png" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*IbQUxQMfIBabZkknJ8ZxrA.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="47"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*IbQUxQMfIBabZkknJ8ZxrA.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*IbQUxQMfIBabZkknJ8ZxrA.png"></noscript>

</div>

</div>

<figcaption class="imageCaption">Want this colour scheme? Get it[ here](https://github.com/zdne/spacegray-xcode).</figcaption>

</figure>

As you can tell, all we did was add a println. Now let’s commit our changes. In the top menu, click ‘Source Control”, then click “Commit”. It’ll bring up this crazy interface that allows you to see some sort of incredibly over-the-top fancy diff, and enter a commit mesage. Add your commit message and click “Commit 1 File” in the bottom right once you’re done. Time to go to GitHub.

#### Go To GitHub

Click the dropdown next to your account name, and click “New Repository”. Give it whatever name you like (it doesn’t have to be the same as your Xcode project name). **Do not initialize your repository with a README**. Just click “Create Repository” and you’re good to go:

<figure name="ee4a" id="ee4a" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 700px; max-height: 439px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*bWO4k3za-Uuhz8t9iHTjeQ.png" data-width="769" data-height="482" data-action="zoom" data-action-value="1*bWO4k3za-Uuhz8t9iHTjeQ.png" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*bWO4k3za-Uuhz8t9iHTjeQ.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="46"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*bWO4k3za-Uuhz8t9iHTjeQ.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*bWO4k3za-Uuhz8t9iHTjeQ.png"></noscript>

</div>

</div>

</figure>

Once you’ve clicked, you’ll see this:

<figure name="0f5f" id="0f5f" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 700px; max-height: 117px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*vntPj-xySgq_QnD7zYK8-g.png" data-width="787" data-height="131" data-action="zoom" data-action-value="1*vntPj-xySgq_QnD7zYK8-g.png" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*vntPj-xySgq_QnD7zYK8-g.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="11"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*vntPj-xySgq_QnD7zYK8-g.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*vntPj-xySgq_QnD7zYK8-g.png"></noscript>

</div>

</div>

</figure>

Copy that link, and go back to Xcode.

#### Xcode Again

Once in Xcode, click “Source Control” again from the top menu. This time, select your branch name, and click “Configure”. Now, click “Remotes”. It’ll look like this:

<figure name="a27c" id="a27c" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 687px; max-height: 468px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*fkFq_uQ7VtrY6cxoadGVxA.png" data-width="687" data-height="468" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*fkFq_uQ7VtrY6cxoadGVxA.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="50"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*fkFq_uQ7VtrY6cxoadGVxA.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*fkFq_uQ7VtrY6cxoadGVxA.png"></noscript>

</div>

</div>

</figure>

Click the little plus sign in the bottom left corner and select “Add remote…” Enter the name you gave it on GitHub, and then copy and paste the URL of your newly created repo:

<figure name="81ce" id="81ce" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 688px; max-height: 469px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*RUWLl4t_XHXAW-ekYF81Yw.png" data-width="688" data-height="469" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*RUWLl4t_XHXAW-ekYF81Yw.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="50"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*RUWLl4t_XHXAW-ekYF81Yw.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*RUWLl4t_XHXAW-ekYF81Yw.png"></noscript>

</div>

</div>

</figure>

Click “Add Remote” and then click “Done” to leave that menu. From here, click “Source Control” from the top menu again, and click “Push”. It’ll ask you for your credentials, and it’ll work differently depending on whether you’ve enabled two factor authentication on GitHub or not.

#### Two Factor Auth Isn’t Enabled

Just enter your username and password. Congrats! You’re done.

#### Two Factor Auth Is Enabled

Every time you want to allow a new service to talk to GitHub, you need to create a new OAuth token. To do that, go back to GitHub, click the little “Settings” cog in the top right of the page, and select “Applications” from the left side menu:

<figure name="812e" id="812e" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 700px; max-height: 218px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*KcomPM4cKZnFbv0QE6ul3Q.png" data-width="741" data-height="231" data-action="zoom" data-action-value="1*KcomPM4cKZnFbv0QE6ul3Q.png" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*KcomPM4cKZnFbv0QE6ul3Q.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="22"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*KcomPM4cKZnFbv0QE6ul3Q.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*KcomPM4cKZnFbv0QE6ul3Q.png"></noscript>

</div>

</div>

</figure>

You’ll need to generate a new access token. Click “Generate new token”, and enter your password to confirm. You’ll be presented with a bunch of options for the level of access that token has. For Xcode, the default options are fine. Enter a title for your new token and click “Generate token”. Once you do this, you’ll presented with a token. **That is the only time you’ll see that token**, so copy it to your clipboard right away. Once you’ve done that, you can return to Xcode.

Once in Xcode, select “Xcode” from the leftmost top menu, then select “Preferences”. Once that is open, click the “Accounts” tab. You’ll something like this:

<figure name="a401" id="a401" class="graf--figure graf-after--p">

<div class="aspectRatioPlaceholder is-locked" style="max-width: 445px; max-height: 445px;">

<div class="progressiveMedia js-progressiveMedia graf-image is-canvasLoaded is-imageLoaded" data-image-id="1*vY_N2xwllyj8Z_c3ai2rWQ.png" data-width="445" data-height="445" data-scroll="native">![](https://cdn-images-1.medium.com/freeze/max/60/1*vY_N2xwllyj8Z_c3ai2rWQ.png?q=20)

<canvas class="progressiveMedia-canvas js-progressiveMedia-canvas" width="75" height="75"></canvas>

![](https://cdn-images-1.medium.com/max/1600/1*vY_N2xwllyj8Z_c3ai2rWQ.png)

<noscript class="js-progressiveMedia-inner"><img class="progressiveMedia-noscript js-progressiveMedia-inner" src="https://cdn-images-1.medium.com/max/1600/1*vY_N2xwllyj8Z_c3ai2rWQ.png"></noscript>

</div>

</div>

</figure>

Enter your GitHub username, **and enter your newly generated token in the password field (not your GitHub password)**. Hit enter once you’re done to submit. Now, close the preferences pane, click “Source Control” again, click “Push…”, and congrats! You’re done. You can now push any new repos without having to go through to token generation process again.

That’s all you have to do to set up GitHub with Xcode. I hope you found this useful. If you’ve still got some free time on your hands, check out my blog at [yearlonghackathon.com](http://yearlonghackathon.com/). Thanks for reading!
