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

</div>

</div>

</section>

</main>

<footer class="u-paddingTop10">

<div class="container u-maxWidth740">

<div class="row js-postActionsFooter">

<div class="postActions col u-size12of12">

<div class="u-floatLeft buttonSet buttonSet--withLabels">

<div class="buttonSet-inner">

<div class="js-actionRecommend" data-post-id="8208b92c7a60" data-is-icon-29px="true" data-has-recommend-list="true" data-source="post_actions_footer"><button class="button button--primary button--large button--chromeless is-touchIconFadeInPulse u-accentColor--buttonNormal button--withIcon button--withSvgIcon u-accentColor--iconLight js-actionRecommendButton" title="Recommend to share this article with your followers and let the author know you liked it" aria-label="Recommend to share this article with your followers and let the author know you liked it" data-action="upvote" data-action-value="8208b92c7a60" data-action-source="post_actions_footer"><span class="button-defaultState"><span class="svgIcon svgIcon--heart svgIcon--29px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--heartFilled svgIcon--29px"></span></span></button><button class="button button--chromeless u-baseColor--buttonNormal" data-action="show-recommends" data-action-value="8208b92c7a60">84</button></div>

</div>

<div class="buttonSet-inner"><button class="button button--large button--dark button--chromeless is-touchIconBlackPulse u-baseColor--buttonDark button--withIcon button--withSvgIcon" data-action="respond" data-action-source="post_actions_footer"><span class="svgIcon svgIcon--response svgIcon--29px"></span></button><button class="button button--chromeless u-baseColor--buttonNormal" data-action="scroll-to-responses">13</button></div>

</div>

<div class="u-floatRight buttonSet buttonSet--narrow"><button class="button button--large button--dark button--chromeless is-touchIconBlackPulse u-baseColor--buttonDark button--withIcon button--withSvgIcon" title="Share on Twitter" aria-label="Share on Twitter" data-action="share-on-twitter" data-action-source="post_actions_footer"><span class="svgIcon svgIcon--twitter svgIcon--29px"></span></button><button class="button button--large button--dark button--chromeless is-touchIconBlackPulse u-baseColor--buttonDark button--withIcon button--withSvgIcon" title="Share on Facebook" aria-label="Share on Facebook" data-action="share-on-facebook" data-action-source="post_actions_footer"><span class="svgIcon svgIcon--facebook svgIcon--29px"></span></button><button class="button button--large button--dark button--chromeless is-touchIconFadeInPulse u-baseColor--buttonDark button--withIcon button--withSvgIcon button--bookmark js-bookmarkButton" title="Bookmark this story to read later" aria-label="Bookmark this story to read later" data-action="add-to-bookmarks" data-action-value="8208b92c7a60"><span class="button-defaultState"><span class="svgIcon svgIcon--bookmark svgIcon--29px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--bookmarkFilled svgIcon--29px"></span></span></button><button class="button button--large button--dark button--chromeless is-touchIconBlackPulse u-baseColor--buttonDark button--withIcon button--withSvgIcon js-moreActionsButton" title="More actions" aria-label="More actions" data-action="more-actions" data-action-source="post_page"><span class="svgIcon svgIcon--more svgIcon--25px"></span></button></div>

</div>

</div>

</div>

<div class="container u-maxWidth740 js-postAttributionFooterContainer">

<div class="row js-postFooterInfo">

<div class="col u-size12of12">*   <div class="u-marginLeft20 u-floatRight"><span class="followState js-followState buttonSet-inner" data-user-id="9404e018af43"><button class="button button--small u-noUserSelect button--withChrome u-baseColor--buttonNormal button--withHover button--unblock js-unblockButton" data-action="toggle-block-user" data-action-value="9404e018af43" data-action-source="footer_card"><span class="button-label  button-defaultState">Blocked</span><span class="button-label button-hoverState">Unblock</span></button><button class="button button--primary button--small u-noUserSelect button--withChrome u-accentColor--buttonNormal button--follow js-followButton" data-action="toggle-subscribe-user" data-action-value="9404e018af43" data-action-source="footer_card_follow" data-subscribe-source="footer_card"><span class="button-label  button-defaultState js-buttonLabel">Follow</span><span class="button-label button-activeState">Following</span></button></span></div>

    <div class="u-tableCell ">[![Go to the profile of Ben Tranter](https://cdn-images-1.medium.com/fit/c/120/120/1*8yZ-Lh8vZCoUsV6_K_MKIQ.jpeg)](https://medium.com/@0xben?source=footer_card "Go to the profile of Ben Tranter")</div>

    <div class="card-content">

    ### [Ben Tranter](https://medium.com/@0xben "Go to the profile of Ben Tranter")

    Thoughts about programming & random stories.

    </div>

    </div>

</div>

</div>

<div class="js-postFooterPlacements">

<div class="streamItem streamItem--placementCardGrid js-streamItem">

<div class="u-clearfix u-backgroundGrayLightest">

<div class="u-marginAuto u-maxWidth1000 u-clearfix u-paddingBottom40 u-paddingTop30">

<div class="col u-padding8 u-xs-size12of12 u-size4of12">

<div class="u-height280 u-sizeFullWidth u-backgroundWhite u-borderCardBorder u-boxShadow u-borderBox u-borderRadius4 js-trackedPost" data-post-id="c1ad2722200e" data-source="placement_card_footer_grid---------0-40" data-tracking-context="placement" data-scroll="native">[](https://medium.com/@danielgalasko/change-your-api-endpoint-environment-using-xcode-configurations-in-swift-c1ad2722200e?source=placement_card_footer_grid---------0-40)

<div class="u-padding15 u-borderBox u-flexColumn u-height180">[

<div class="postMetaInline u-marginBottom7">Related reads</div>

<div class="u-textColorDarkest u-contentSansBold u-fontSizeLarge u-maxHeight2LineHeightTighter u-lineClamp2 u-textOverflowEllipsis u-letterSpacingTight u-paddingBottom2">Change your API endpoint/environment using Xcode Configurations in Swift</div>

](https://medium.com/@danielgalasko/change-your-api-endpoint-environment-using-xcode-configurations-in-swift-c1ad2722200e?source=placement_card_footer_grid---------0-40)

<div class="u-paddingTop10 u-flex0 u-flexCenter">

<div class="u-flex1 u-noWrapWithEllipsis">

<div class="postMetaInline-avatar">[![Go to the profile of Daniel Galasko](https://cdn-images-1.medium.com/fit/c/72/72/0*xJyf9nLocxlTQFAH.jpeg)](https://medium.com/@danielgalasko)</div>

<div class="postMetaInline-authorLockup">[Daniel Galasko](https://medium.com/@danielgalasko?source=placement_card_footer_grid---------0-40)

<div class="u-fontSizeSmallest js-postMetaInlineSupplemental"><span class="readingTime u-textColorNormal">4 min read</span></div>

</div>

</div>

<div class="u-flex0 u-flexCenter">

<div class="u-inlineBlock">

<div class="js-actionRecommend" data-post-id="c1ad2722200e" data-is-label-padded="true" data-source="placement_card_footer_grid---------0-40"><button class="button button--primary button--chromeless is-touchIconFadeInPulse u-accentColor--buttonNormal button--withIcon button--withSvgIcon u-accentColor--iconLight js-actionRecommendButton" title="Recommend to share this article with your followers and let the author know you liked it" aria-label="Recommend to share this article with your followers and let the author know you liked it" data-action="upvote" data-action-value="c1ad2722200e" data-action-source="placement_card_footer_grid---------0-40"><span class="button-defaultState"><span class="svgIcon svgIcon--heart svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--heartFilled svgIcon--25px"></span></span></button><button class="button button--chromeless u-baseColor--buttonNormal u-disablePointerEvents u-marginLeft4" data-action="show-recommends" data-action-value="c1ad2722200e">110</button></div>

</div>

<div class="u-inlineBlock"><button class="button button--chromeless is-touchIconFadeInPulse u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--bookmark js-bookmarkButton" title="Bookmark this story to read later" aria-label="Bookmark this story to read later" data-action="add-to-bookmarks" data-action-value="c1ad2722200e"><span class="button-defaultState"><span class="svgIcon svgIcon--bookmark svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--bookmarkFilled svgIcon--25px"></span></span></button></div>

</div>

</div>

</div>

</div>

</div>

<div class="col u-padding8 u-xs-size12of12 u-size4of12">

<div class="u-height280 u-sizeFullWidth u-backgroundWhite u-borderCardBorder u-boxShadow u-borderBox u-borderRadius4 js-trackedPost" data-post-id="231f82cbb781" data-source="placement_card_footer_grid---------1-40" data-tracking-context="placement" data-scroll="native">[](https://medium.com/the-traveled-ios-developers-guide/architecture-patterns-in-ios-part-3-231f82cbb781?source=placement_card_footer_grid---------1-40)

<div class="u-padding15 u-borderBox u-flexColumn u-height180">[

<div class="postMetaInline u-marginBottom7">Related reads</div>

<div class="u-textColorDarkest u-contentSansBold u-fontSizeLarge u-maxHeight2LineHeightTighter u-lineClamp2 u-textOverflowEllipsis u-letterSpacingTight u-paddingBottom2">Architecture Patterns in iOS:Part 3</div>

](https://medium.com/the-traveled-ios-developers-guide/architecture-patterns-in-ios-part-3-231f82cbb781?source=placement_card_footer_grid---------1-40)

<div class="u-paddingTop10 u-flex0 u-flexCenter">

<div class="u-flex1 u-noWrapWithEllipsis">

<div class="postMetaInline-avatar">[![Go to the profile of Jordan Morgan](https://cdn-images-1.medium.com/fit/c/72/72/1*j_oJA_lGsqfnuNDNLhnTTg.png)](https://medium.com/@JordanMorgan10)</div>

<div class="postMetaInline-authorLockup">[Jordan Morgan](https://medium.com/@JordanMorgan10?source=placement_card_footer_grid---------1-40)

<div class="u-fontSizeSmallest js-postMetaInlineSupplemental"><span class="readingTime u-textColorNormal">6 min read</span></div>

</div>

</div>

<div class="u-flex0 u-flexCenter">

<div class="u-inlineBlock">

<div class="js-actionRecommend" data-post-id="231f82cbb781" data-is-label-padded="true" data-source="placement_card_footer_grid---------1-40"><button class="button button--primary button--chromeless is-touchIconFadeInPulse u-accentColor--buttonNormal button--withIcon button--withSvgIcon u-accentColor--iconLight js-actionRecommendButton" title="Recommend to share this article with your followers and let the author know you liked it" aria-label="Recommend to share this article with your followers and let the author know you liked it" data-action="upvote" data-action-value="231f82cbb781" data-action-source="placement_card_footer_grid---------1-40"><span class="button-defaultState"><span class="svgIcon svgIcon--heart svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--heartFilled svgIcon--25px"></span></span></button><button class="button button--chromeless u-baseColor--buttonNormal u-disablePointerEvents u-marginLeft4" data-action="show-recommends" data-action-value="231f82cbb781">71</button></div>

</div>

<div class="u-inlineBlock"><button class="button button--chromeless is-touchIconFadeInPulse u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--bookmark js-bookmarkButton" title="Bookmark this story to read later" aria-label="Bookmark this story to read later" data-action="add-to-bookmarks" data-action-value="231f82cbb781"><span class="button-defaultState"><span class="svgIcon svgIcon--bookmark svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--bookmarkFilled svgIcon--25px"></span></span></button></div>

</div>

</div>

</div>

</div>

</div>

<div class="col u-padding8 u-xs-size12of12 u-size4of12">

<div class="u-height280 u-sizeFullWidth u-backgroundWhite u-borderCardBorder u-boxShadow u-borderBox u-borderRadius4 js-trackedPost" data-post-id="169fa164a6ec" data-source="placement_card_footer_grid---------2-40" data-tracking-context="placement" data-scroll="native">[](https://medium.com/@Jernfrost/functional-design-patterns-in-swift-interpreter-169fa164a6ec?source=placement_card_footer_grid---------2-40)

<div class="u-padding15 u-borderBox u-flexColumn u-height180">[

<div class="postMetaInline u-marginBottom7">Related reads</div>

<div class="u-textColorDarkest u-contentSansBold u-fontSizeLarge u-maxHeight2LineHeightTighter u-lineClamp2 u-textOverflowEllipsis u-letterSpacingTight u-paddingBottom2">Functional Design Patterns in Swift: Interpreter</div>

](https://medium.com/@Jernfrost/functional-design-patterns-in-swift-interpreter-169fa164a6ec?source=placement_card_footer_grid---------2-40)

<div class="u-paddingTop10 u-flex0 u-flexCenter">

<div class="u-flex1 u-noWrapWithEllipsis">

<div class="postMetaInline-avatar">[![Go to the profile of Erik Engheim](https://cdn-images-1.medium.com/fit/c/72/72/0*1Y9ylHZ8csOxgZr7.jpg)](https://medium.com/@Jernfrost)</div>

<div class="postMetaInline-authorLockup">[Erik Engheim](https://medium.com/@Jernfrost?source=placement_card_footer_grid---------2-40)

<div class="u-fontSizeSmallest js-postMetaInlineSupplemental"><span class="readingTime u-textColorNormal">4 min read</span></div>

</div>

</div>

<div class="u-flex0 u-flexCenter">

<div class="u-inlineBlock">

<div class="js-actionRecommend" data-post-id="169fa164a6ec" data-is-label-padded="true" data-source="placement_card_footer_grid---------2-40"><button class="button button--primary button--chromeless is-touchIconFadeInPulse u-accentColor--buttonNormal button--withIcon button--withSvgIcon u-accentColor--iconLight js-actionRecommendButton" title="Recommend to share this article with your followers and let the author know you liked it" aria-label="Recommend to share this article with your followers and let the author know you liked it" data-action="upvote" data-action-value="169fa164a6ec" data-action-source="placement_card_footer_grid---------2-40"><span class="button-defaultState"><span class="svgIcon svgIcon--heart svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--heartFilled svgIcon--25px"></span></span></button><button class="button button--chromeless u-baseColor--buttonNormal u-disablePointerEvents u-marginLeft4" data-action="show-recommends" data-action-value="169fa164a6ec">20</button></div>

</div>

<div class="u-inlineBlock"><button class="button button--chromeless is-touchIconFadeInPulse u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--bookmark js-bookmarkButton" title="Bookmark this story to read later" aria-label="Bookmark this story to read later" data-action="add-to-bookmarks" data-action-value="169fa164a6ec"><span class="button-defaultState"><span class="svgIcon svgIcon--bookmark svgIcon--25px"></span></span><span class="button-activeState"><span class="svgIcon svgIcon--bookmarkFilled svgIcon--25px"></span></span></button></div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="responsesWrapper supplementalPostContent js-responsesWrapper" data-action-scope="_actionscope_5">

<div class="container u-maxWidth740">

<div class="responsesStreamWrapper u-maxWidth640 js-responsesStreamWrapper">

<div class="container u-maxWidth640 responsesStream-title u-paddingTop15">

<div class="row">

<div class="col u-size12of12">

<div class="heading u-clearfix">

<div class="u-clearfix">

<div class="heading-content u-floatLeft"><span class="heading-title heading-title--semibold">Related Stories</span></div>

<div class="heading-content u-floatRight">[Write a related story](https://medium.com/p/8208b92c7a60/responses/new)</div>

</div>

</div>

</div>

</div>

</div>

<div class="container u-maxWidth640 u-marginBottom30 responsesStream-editor cardChromeless u-hide js-responsesStreamEditor">

<div class="row">

<div class="col u-size12of12">

<div class="inlineNewPostControl js-inlineNewPostControl blockGroup blockGroup-list" data-action-scope="_actionscope_6">

<div class="inlineEditor is-collapsed js-inlineEditor" data-action="focus-editor">

<div class="block block--inset block--list block--preview js-block js-inlineEditorContent">

<div class="inlineEditor-header">

<div class="inlineEditor-avatar u-paddingRight10">

<div class="avatar avatar--inline">![Natu Myers](https://cdn-images-1.medium.com/fit/c/72/72/1*S3LMap9O1-_RNQRZFgc0fA.jpeg)</div>

</div>

<div class="inlineEditor-headerContent">

<div class="inlineEditor-placeholder js-inlineEditorPrompt">Write a response…</div>

<div class="inlineEditor-author u-accentColor--textNormal">Natu Myers</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="container u-maxWidth640 u-marginBottom30 u-borderTopLighter u-hide js-noOtherResponses">

<div class="row">

<div class="col u-size12of12">

<div class="u-paddingTop20 u-paddingBottom25">

<div class="u-inlineBlock u-verticalAlignTop u-paddingRight10">

<div class="avatar avatar--inline">![Unknown user](https://cdn-static-1.medium.com/_/fp/img/default-avatar.dmbNkD5D-u45r44go_cf0g.png)</div>

</div>

<div class="u-inlineBlock">

<div class="u-lineHeight36 u-textColorNormal u-contentSerifRegular">No related stories yet</div>

</div>

</div>

</div>

</div>

</div>

<div class="container u-maxWidth640 js-showOtherResponses">

<div class="row"><button class="button button--primary button--withChrome u-accentColor--buttonNormal responsesStream-showOtherResponses cardChromeless u-sizeFullWidth" data-action="show-other-responses">Show all related stories</button></div>

</div>

</div>

</div>

</div>

</footer>

</article>

<div class="highlightMenu highlightMenu--active" data-action-scope="_actionscope_3" style="left: 624px; top: 5149px;">

<div class="highlightMenu-inner">

<div class="buttonSet buttonSet--highlightMenu"><button class="button button--chromeless u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--highlightMenu u-accentColor--highlightStrong js-highlightMenuQuoteButton" data-action="quote" data-action-source="quote_menu"><span class="svgIcon svgIcon--highlighter svgIcon--25px"></span></button><button class="button button--chromeless u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--highlightMenu " data-action="quote-respond" data-action-source="quote_menu"><span class="svgIcon svgIcon--responseFilled svgIcon--25px"></span></button><button class="button button--chromeless u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--highlightMenu " data-action="twitter" data-action-source="quote_menu"><span class="svgIcon svgIcon--twitterFilled svgIcon--25px"></span></button><button class="button button--chromeless u-baseColor--buttonNormal button--withIcon button--withSvgIcon button--highlightMenu " data-action="highlight" data-action-source="quote_menu"><span class="svgIcon svgIcon--privatenoteFilled svgIcon--25px"></span></button></div>

</div>

<div class="highlightMenu-arrowClip"><span class="highlightMenu-arrow"></span></div>

</div>

</div>

</div>

</div>

<script>// <![CDATA[ window["obvInit"] = function (opt_embedded) {window["obvInit"]["embedded"] = opt_embedded; window["obvInit"]["ready"] = true;} // ]]></script><script>// <![CDATA[ var GLOBALS = {"audioUrl":"https://d1fcbxp97j4nb2.cloudfront.net","baseUrl":"https://medium.com","bestOfFirstSlug":"may-2013","bestOfLatestSlug":"april-2016","buildLabel":"25028-536d17a","currentUser":{"userId":"e4bff59844be","username":"NatuMyers","name":"Natu Myers","bio":"http://Natumyers.com http://Raptroop.com Serial Entrepreneur, B.Comp Grad Queen’s U, lover of life, thanker of God","imageId":"1*S3LMap9O1-_RNQRZFgc0fA.jpeg","twitterScreenName":"NatuMyers","twitterAvatar":"https://pbs.twimg.com/profile_images/691066955239923713/QAm7kNLD.jpg","createdAt":1422561088727,"updatedAt":1473822897806,"lastPostCreatedAt":1471130209977,"upvotes":6,"unvotes":1,"loggedInReads":158,"loggedInReadsUnique":138,"loggedOutReads":671,"loggedInViews":193,"loggedOutViews":950,"postsRead":31,"lastTimezoneOffsetMin":420,"languageCode":"en-us","flagSeenEditor":2,"twitterLastImportedAt":1429830532091,"facebookAccountId":"10209407502330225","facebookDisplayName":"Natu Myers","isVerified":true,"subscriberEmail":"","activityLastSeenAt":1465797494899},"currentUserHasUnverifiedEmail":false,"isAuthenticated":true,"isCurrentUserVerified":true,"language":"en-us","loadingPlaceholderImg":"https://cdn-static-1.medium.com/_/fp/img/media-loading-placeholder.b31hiO4ynbDLRrXWEFF4aQ.png","mediumTwitterScreenName":"medium","miroUrl":"https://cdn-images-1.medium.com","moduleUrls":{"base":"https://cdn-static-1.medium.com/_/fp/js/main-base.bundle.MK_7hs50D5ixH2ewjlhvGQ.js","notes":"https://cdn-static-1.medium.com/_/fp/js/main-notes.bundle.udmlxt2C33IpzzJsO3vBYw.js","posters":"https://cdn-static-1.medium.com/_/fp/js/main-posters.bundle.eALUpACD5_Hd7wUz76IuKg.js","common-async":"https://cdn-static-1.medium.com/_/fp/js/main-common-async.bundle.6WY5M8gly3fidBRIzMzNdQ.js","stats":"https://cdn-static-1.medium.com/_/fp/js/main-stats.bundle.SmDOa_rGXYAUBHMrPhWKew.js","misc-screens":"https://cdn-static-1.medium.com/_/fp/js/main-misc-screens.bundle.SR93FNpeG4FxI8kAFOxFfw.js"},"postColumnWidth":700,"previewConfig":{"weightThreshold":1,"weightImageParagraph":0.51,"weightIframeParagraph":0.8,"weightTextParagraph":0.08,"weightEmptyParagraph":0,"weightP":0.003,"weightH":0.005,"weightBq":0.003,"minPTextLength":60,"truncateBoundaryChars":20,"detectTitle":true,"detectTitleLevThreshold":0.15},"productName":"Medium","supportsEdit":true,"termsUrl":"//medium.com/policy/9db0094a1e0f","textshotHost":"textshot.medium.com","transactionId":"1473831583604:212241b756f5","useragent":{"browser":"chrome","family":"chrome","os":"mac","version":52,"supportsDesktopEdit":true,"supportsInteract":true,"supportsView":true,"isMobile":false,"isTablet":false,"isNative":false,"supportsFileAPI":true,"isTier1":true,"clientVersion":"","unknownParagraphsBad":false,"clientChannel":"","supportsRealScrollEvents":true,"supportsVhUnits":true,"ruinsViewportSections":false,"supportsHtml5Video":true,"supportsMagicUnderlines":true,"isFacebook":false,"isWebView":false,"isFacebookWebView":false,"supportsProgressiveMedia":true,"isGoogle":false,"isApple":false,"supportsPromotedPosts":true,"isBing":false,"isYahoo":false,"isTwitter":false,"isBaidu":false,"isSlack":false,"isSimplePie":false,"isYandex":false,"isBot":false,"isSocialMediaBot":false,"supportsScrollableMetabar":true},"variants":{"allow_access":true,"allow_signup":true,"allow_test_auth":"disallow","enable_lightstep_web_client":true,"signin_services":"twitter,facebook,google,email,google-fastidv","signup_services":"twitter,facebook,google,email,google-fastidv","enable_smyte_integration":true,"enable_service_worker":true,"android_rating_prompt_recommend_threshold":5,"google_sign_in_android":true,"enable_onboarding":true,"custom_miro_url":"https://cdn-images-1.medium.com","ios_custom_miro_url":"https://cdn-images-1.medium.com","reengagement_notification_duration":3,"enable_user_social_count_healing":true,"enable_related_reads_webui":true,"enable_post_bundles_strategy_tag_based":true,"enable_hopper_for_tag_based_post_bundles":true,"enable_post_bundles_strategy_author_based":true,"enable_post_bundles_strategy_collection_based":true,"show_author_writes_about":true,"top_stories_experiment_source":"topStories02","enable_next_tick_update":true,"enable_adsnative_integration":true,"browsable_stream_config_bucket":"curated","ios_small_post_preview_truncation_length":5.5,"ios_large_post_preview_truncation_length":5.5,"disable_ios_catalog_badging":true,"enable_ranked_feed_survey_promo":true,"enable_textshots_v2":true,"enable_textshots_v2_web_ui":true,"enable_dark_sign_in_modals":true,"enable_ios_personalization_promo":true,"enable_personalization_station_web":true,"add_top_stories_in_digest":true,"digest_experiment":"control","enable_digest_snapshot":true,"enable_prepublish_share_settings":true,"enable_direct_auth_connect":true,"enable_prepublish_twitter_connect":true,"enable_sponsored_post_labelling":true,"enable_collection_post_nav_item":true,"enable_related_reads_footer_grid_ui":true,"enable_logged_in_follow_on_collection_post":true,"enable_read_next_in_metabar":true,"enable_placements":true,"social_recs_weight_factor":1,"digest_total_post_count":30,"digest_posts_count_published_by_followed_users_and_collections":16,"digest_posts_count_recommended_by_users":5,"digest_posts_count_recommended_by_staff":5,"digest_posts_count_per_tag":2,"enable_prepublish_facebook_share":true,"enable_prepublish_facebook_connect":true,"promoted_story_placement_locations":"POST_PAGE_FOOTER,POST_PAGE_BELOW_POST_ACTIONS","rollup_responses_in_activity_feed":true,"enable_stats_response_filtering":true,"enable_ios_feature_education":true,"enable_email_curse_words_filtering":true,"enable_related_reads_curse_words_filtering":true,"enable_normalized_email_check":true,"enable_search_collection_by_tag_recency_filter":true,"search_collection_by_tag_filter_min_votes":10,"enable_stream_ttr_on_post_page":true,"enable_links_open_in_new_tabs":true,"scroll_to_next_stack_size":5,"enable_amplified_provider":true,"slow_retries_on_throttling":true,"enable_user_blocks_bloom_filter":true,"show_read_history":true,"enable_response_experiment_c":true,"honeypot_strategy":"entity"},"xsrfToken":"aKbDBHjFELlQQbsA","iosAppId":"828256236","supportEmail":"yourfriends@medium.com","teamName":"Team Medium","fp":{"/img/apple-touch-icon-ipad-retina.png":"https://cdn-static-1.medium.com/_/fp/img/apple-touch-icon-ipad-retina.Akq8aSfZqfW1fceMxKqBZA.png","/img/apple-touch-icon-iphone-retina.png":"https://cdn-static-1.medium.com/_/fp/img/apple-touch-icon-iphone-retina.c211N_zSkSXPQk-ggPi4mQ.png","/img/apple-touch-icon-ipad.png":"https://cdn-static-1.medium.com/_/fp/img/apple-touch-icon-ipad.LSTr_8Uf-3hSd7eDjoW_8g.png","/img/apple-touch-icon.png":"https://cdn-static-1.medium.com/_/fp/img/apple-touch-icon.JWwtHOsKxVkBzoR3FSccjw.png","/img/default-avatar.png":"https://cdn-static-1.medium.com/_/fp/img/default-avatar.dmbNkD5D-u45r44go_cf0g.png","/img/default-preview-image.png":"https://cdn-static-1.medium.com/_/fp/img/default-preview-image.IsBK38jFAJBlWifMLO4z9g.png","/img/default-preview-image-v2.png":"https://cdn-static-1.medium.com/_/fp/img/default-preview-image-v2.MXL-j6S8fTEd8UFP_foEEw.png","/img/email/app_store_badge@2x.png":"https://cdn-static-1.medium.com/_/fp/img/email/app_store_badge@2x.8bDQGNMm-Xs7Hz6WA2XquQ.png","/img/email/app-devices@2x.png":"https://cdn-static-1.medium.com/_/fp/img/email/app-devices@2x.6hgpI423F62SKyT8Lo6dzA.png","/img/email/check1.png":"https://cdn-static-1.medium.com/_/fp/img/email/check1.0DM77li7vZhq5o2V9cVYLQ.png","/img/email/check2.png":"https://cdn-static-1.medium.com/_/fp/img/email/check2.GLlNusQmn1hwo9WDN-gE1w.png","/img/email/check3.png":"https://cdn-static-1.medium.com/_/fp/img/email/check3.7VxOUVMXAVbHRRnzMrJ_5A.png","/img/email/email-logo.png":"https://cdn-static-1.medium.com/_/fp/img/email/email-logo.x91rxfZYzIT9OJ5-ySD30A.png","/img/email/email-wordmark.png":"https://cdn-static-1.medium.com/_/fp/img/email/email-wordmark.gDTi-pejtOeN6Ux6a0MNFQ.png","/img/email/fb_logo.png":"https://cdn-static-1.medium.com/_/fp/img/email/fb_logo.Q0M98YwNTu77gLWTK6-RyQ.png","/img/email/google_play_badge@2x.png":"https://cdn-static-1.medium.com/_/fp/img/email/google_play_badge@2x.iWEWlt5_Qj20rr79-IGEBQ.png","/img/email/heart.png":"https://cdn-static-1.medium.com/_/fp/img/email/heart._hlyuYQiuuTWrRmDnDphJA.png","/img/email/heart@2x.png":"https://cdn-static-1.medium.com/_/fp/img/email/heart@2x.qvCTX1XHNpntqxt01oypQw.png","/img/email/heart1.png":"https://cdn-static-1.medium.com/_/fp/img/email/heart1.rnGEmSwcGUhztl_zSU7l6Q.png","/img/email/heart2.png":"https://cdn-static-1.medium.com/_/fp/img/email/heart2.HBiLu3koIYsKjjKroohgbA.png","/img/email/heart3.png":"https://cdn-static-1.medium.com/_/fp/img/email/heart3.AIJBOHw11HuhdClVJNtmtg.png","/img/email/large.png":"https://cdn-static-1.medium.com/_/fp/img/email/large.4EIhZbIk5sgqYSoB4YPmUA.png","/img/email/response.png":"https://cdn-static-1.medium.com/_/fp/img/email/response.5ZuN24N5XqS7ofHKg1lKXw.png","/img/email/response@2x.png":"https://cdn-static-1.medium.com/_/fp/img/email/response@2x.xzKQM4FzSurAVkghLQQWkA.png","/img/email/trophy.png":"https://cdn-static-1.medium.com/_/fp/img/email/trophy.YXqqMnNASKQDXZ46YdTWFA.png","/img/email/twitter_logo.png":"https://cdn-static-1.medium.com/_/fp/img/email/twitter_logo.Pz4a3o9WMU5QioxLKcyFhQ.png","/img/email/unlisted.png":"https://cdn-static-1.medium.com/_/fp/img/email/unlisted.ikh8R2LElOz_1YM8A2Db4g.png","/img/email/welcome-heart.png":"https://cdn-static-1.medium.com/_/fp/img/email/welcome-heart.6BRCOGcwGeOCBTql8pbq2g.png","/img/email/welcome-response.png":"https://cdn-static-1.medium.com/_/fp/img/email/welcome-response.iWVQLjiUG5pyQrPyGiYEpw.png","/img/email/welcome-write.png":"https://cdn-static-1.medium.com/_/fp/img/email/welcome-write.afdGsuE6YDk3HkaIASRl0w.png","/img/help/add-media-start.gif":"https://cdn-static-1.medium.com/_/fp/img/help/add-media-start.GXmqQ2Svt1WfZGIZSM93tg.gif","/img/help/add-media.gif":"https://cdn-static-1.medium.com/_/fp/img/help/add-media.SZH2LBmkwVExuhozFfVvYg.gif","/img/help/embed-start.gif":"https://cdn-static-1.medium.com/_/fp/img/help/embed-start.EBJ2PcWFJuYopsQV4wwklA.gif","/img/help/embed.gif":"https://cdn-static-1.medium.com/_/fp/img/help/embed.1BM0Di9vd91Kv8fLioJabw.gif","/img/help/text-highlight-start.gif":"https://cdn-static-1.medium.com/_/fp/img/help/text-highlight-start.AvTbakaFuUCd05YoMECoMQ.gif","/img/help/text-highlight.gif":"https://cdn-static-1.medium.com/_/fp/img/help/text-highlight.XVChoKYZ1-s3gJgHm9-7Yg.gif","/img/help/2.0-add-media.gif":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-add-media.LhrJcTFODoqjnPPuHNEInA.gif","/img/help/2.0-add-media-start.png":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-add-media-start.PTVdm36977cSfaYOpMNTNQ.png","/img/help/2.0-highlight-menu.gif":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-highlight-menu.eqlvF_kPTaDVcWZV4oPjVA.gif","/img/help/2.0-highlight-menu-start.png":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-highlight-menu-start.bkThTm0MV-KahZWttjBlJQ.png","/img/help/2.0-embed.gif":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-embed.2g5jIXYtWjsRFa9D-hBhMQ.gif","/img/help/2.0-embed-start.png":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-embed-start.LGy_FmixvcoEVIDKjg1jwA.png","/img/help/2.0-mention.gif":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-mention.H9pEv0eHAvkGUVqdrHxH5g.gif","/img/help/2.0-mention-start.png":"https://cdn-static-1.medium.com/_/fp/img/help/2.0-mention-start.ShYTOfy6w3VDU9PKFfOEyw.png","/img/help/highlight-tips-1.gif":"https://cdn-static-1.medium.com/_/fp/img/help/highlight-tips-1.dEp02HXMKtAeKxsV5MWqGg.gif","/img/help/highlight-tips-2.gif":"https://cdn-static-1.medium.com/_/fp/img/help/highlight-tips-2.SyXCciYXeNpx4-GUAuh0XQ.gif","/img/import/highlight-menu.png":"https://cdn-static-1.medium.com/_/fp/img/import/highlight-menu.kzoaVM8mJJ-Hu9m9uo3Omg.png","/img/import/image-highlight-menu.png":"https://cdn-static-1.medium.com/_/fp/img/import/image-highlight-menu.q43-H2dl0JvBS_5znQCW8A.png","/img/import/publish-metabar.png":"https://cdn-static-1.medium.com/_/fp/img/import/publish-metabar.YbEX1a2Pu0rAR_LuKeg8JA.png","/img/payments/amex.png":"https://cdn-static-1.medium.com/_/fp/img/payments/amex.5EPSpIzX7GdCzJlp6ScaDw.png","/img/payments/diners.png":"https://cdn-static-1.medium.com/_/fp/img/payments/diners.NGD5bmkc-37YhAWWR1kzZQ.png","/img/payments/discover.png":"https://cdn-static-1.medium.com/_/fp/img/payments/discover.EZDA3I2LqtScyoBjwnpyAA.png","/img/payments/jcb.png":"https://cdn-static-1.medium.com/_/fp/img/payments/jcb.r4YW_7gdVvO70Y1uobs9zw.png","/img/payments/mastercard.png":"https://cdn-static-1.medium.com/_/fp/img/payments/mastercard.pkLRUgj9PI_snp1LBC8FYQ.png","/img/payments/placeholder.png":"https://cdn-static-1.medium.com/_/fp/img/payments/placeholder.UD4yFjC9YHrS0yCBRmRwvQ.png","/img/payments/visa.png":"https://cdn-static-1.medium.com/_/fp/img/payments/visa.0d40297wdAUwEkxSXQjBoQ.png","/img/payments/credit-card-sprite.png":"https://cdn-static-1.medium.com/_/fp/img/payments/credit-card-sprite.aNIJTodZTkf86-MUkQX7Xw.png","/img/signup/signup_education.png":"https://cdn-static-1.medium.com/_/fp/img/signup/signup_education.U40idKqxw3q2V5uNY4tV2w.png","/icons/favicon.svg":"https://cdn-static-1.medium.com/_/fp/icons/favicon.KjTfUJo7yJH_fCoUzzH3cg.svg","/icons/favicon-dev-editor.ico":"https://cdn-static-1.medium.com/_/fp/icons/favicon-dev-editor.YKKRxBO8EMvIqhyCwIiJeQ.ico","/icons/favicon-hatch-editor.ico":"https://cdn-static-1.medium.com/_/fp/icons/favicon-hatch-editor.BuEyHIqlyh2s_XEk4Rl32Q.ico","/icons/favicon-medium-editor.ico":"https://cdn-static-1.medium.com/_/fp/icons/favicon-medium-editor.PiakrZWB7Yb80quUVQWM6g.ico"},"authBaseUrl":"https://medium.com","imageUploadSizeMb":25,"isAuthDomainRequest":true,"algoliaApiEndpoint":"https://MQ57UUUQZ2-dsn.algolia.net","algoliaAppId":"MQ57UUUQZ2","algoliaSearchOnlyApiKey":"aadabda268e3bfaffe7b287709262fec","iosAppStoreUrl":"https://itunes.apple.com/app/medium-everyones-stories/id828256236?pt=698524&mt=8","iosAppLinkBaseUrl":"medium:","algoliaIndexPrefix":"medium_","androidPlayStoreUrl":"https://play.google.com/store/apps/details?id=com.medium.reader","googleClientId":"216296035834-k1k6qe060s2tp2a2jam4ljdcms00sttg.apps.googleusercontent.com","androidPackage":"com.medium.reader","androidPlayStoreMarketScheme":"market://details?id=com.medium.reader","googleAuthUri":"https://accounts.google.com/o/oauth2/auth","androidScheme":"medium","layoutData":{"useDynamicScripts":false,"googleAnalyticsTrackingCode":"UA-24232453-2","jsShivUrl":"https://cdn-static-1.medium.com/_/fp/js/shiv.RI2ePTZ5gFmMgLzG5bEVAA.js","cssFontUrls":["https://cdn-static-1.medium.com/_/fp/css/fonts-base.by5Oi_VbnwEIvhnWIsuUjA.css"],"useDynamicCss":false,"faviconUrl":"https://cdn-static-1.medium.com/_/fp/icons/favicon-medium.TAS6uQ-Y7kcKgi0xjcYHXw.ico"},"authBaseUrlRev":"moc.muidem//:sptth","isDnt":false,"stripePublishableKey":"pk_live_7FReX44VnNIInZwrIIx6ghjl","archiveUploadSizeMb":100,"paymentData":{"currencies":{"1":{"label":"US Dollar","external":"usd"}},"countries":{"1":{"label":"United States of America","external":"US"}},"accountTypes":{"1":{"label":"Individual","external":"individual"},"2":{"label":"Company","external":"company"}}},"previewConfig2":{"weightThreshold":1,"weightImageParagraph":0.05,"raiseImage":true,"enforceHeaderHierarchy":true,"isImageInsetRight":true},"isAmp":false,"iosScheme":"medium","isSwBoot":true,"lightstep":{"accessToken":"ce5be895bef60919541332990ac9fef2","host":"lightstep.medium.com"},"facebook":{"key":"542599432471018","secret":"c14df7146e9052a1131f3c900c1f0644","token":"542599432471018|1JqjIwxSfY9jOt_KwjWEl1R7T6I","namespace":"medium-com","scope":{"default":["public_profile","email","user_friends"],"connect":["public_profile","email","user_friends"],"login":["public_profile","email","user_friends"],"share":["public_profile","email","user_friends","publish_actions"]},"smartPublishWhitelistedPublications":["bcc38c8f6edf","f3726e2a5878","828a270689e","81c7d351c056","f30e42fd7ff8","8bf1d7d3081b","d16afa0ae7c","d8f3f6ad9c31","e74de0cedea9","15f753907972","c8c6a6b01ebd","3412b9729488","2ce4bbcf83bb","544c7006046e","7bfcdbc6b30a","a268fd916824","458a773bccd2"],"instantArticles":{"published":true,"developmentMode":false}},"isDoNotAuth":false} // ]]></script><script>// <![CDATA[ window["obvInit"](null) // ]]></script>
