# skeletime

Repo containing main patches for a system for classifying and broadcasting out EAO sound painting gestures. This repo DOES NOT contain the mediapipe skeletime app OR the [skeleweb node app](https://github.com/kieranmaraj/skeleweb) for heroku deployment. The main patches are:

- skeletime.BROADCAST - receives pose and multihand data from the mediapipe skeletime app and broadcasts that data via the skeleweb web app
- skeletime.RECEIVER - receives raw pose and multihand data from the skeleweb web app. Filters that data and sends it (locally via Max send/receives) to the skeletime.CLASSIFY patch
- /soundpainting-signs-gestures-recognition/Main_patch/skeletime.CLASSIFY - modified version of [Arthur Parmetier's Sound Painting Recognition patch.](https://github.com/arthur-parmentier/soundpainting-signs-gestures-recognition) 

# To run mediapipe application:

- navigate to the skeletime-mediapipe directory (on dispersion_noise this is ~/skeletime-mediapipe)
- run the command: 
```
GLOG_logtostderr=1 bazel-bin/mediapipe/examples/desktop/skeletime_tracking/skeletime_tracking --calculator_graph_config_file=mediapipe/graphs/skeletime_tracking/skeletime_tracking.pbtxt
```
- if the application needs to be built, first run the command:
```
bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/skeletime_tracking:skeletime_tracking
```

