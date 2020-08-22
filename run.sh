#!/bin/bash

cd FRAPP/DeepLearningFaceRecognitionSystem/
nohup python main.py --cdp=config.json &
cd ../../FaceRecognition-FrontEnd
nohup npm run start &

echo "===App started successfully==="

