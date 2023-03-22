# Univpm3D

1 - Model realized with [Agisoft Metashape (64 bit)](https://www.agisoft.com/), ripped from google earth photogrammetry. (Yeah I know there are better ways like [RenderDoc](https://renderdoc.org/) to directly capture  the model, but I found out too late).

2 - App test realized in Flutter using [model_viewer_plus 1.5.0](https://pub.dev/packages/model_viewer_plus/changelog), a packages which embeds Google's [model-viewer](https://modelviewer.dev/) web component in a WebView.

3 - I found some difficulty in handling hotspot locations. Reading the documentation of Google's project it seems easy as copy-paste the inner html <button> tag of the hotspot after selecting its corret positions using the online editor; but something goes off when I use it, because the postion of the hotspot goes astray.


### Samples
<image src="https://user-images.githubusercontent.com/22773005/226123411-1de43239-f2a0-4018-80be-f732286d32f5.jpg" width="600"/>
<image src="https://user-images.githubusercontent.com/22773005/226123414-219858b6-5ead-4a7f-b2da-4e18851d62ed.jpg" width="600"/>
<image src="https://user-images.githubusercontent.com/22773005/226123415-505fb6e1-370c-4fc5-9cde-0d37d4de5c24.jpg" width="600"/>
