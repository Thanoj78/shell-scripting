#!/bin/bash

LID=lt-0495b5dbb849fecb2
LVER=2

aws ec2 run-instances --launch-template LaunchTemplateID=$LID,Version=$LVER
