#!/bin/bash

aws iam create-group --group-name DevelopmentGroup
aws iam create-group --group-name TestingGroup

aws iam create-user --user-name devuser
aws iam create-user --user-name testuser

aws iam add-user-to-group --user-name devuser --group-name DevelopmentGroup
aws iam add-user-to-group --user-name testuser --group-name TestingGroup

aws iam attach-group-policy --group-name DevelopmentGroup --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess

aws iam attach-group-policy --group-name TestingGroup --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess