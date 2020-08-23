#!/bin/bash


cd FaceRecognition-FrontEnd
nohup npm run start &


cd ../DeepLearningFaceRecognitionSystem/
source ~/anaconda3/etc/profile.d/conda.sh
conda activate exp
nohup python main.py --cdp=config.json &

echo "===App started successfully==="

