{
    "repositories": [
        {
            "repositoryArn": "arn:aws:ecr:us-east-1:924144197303:repository/test",
            "registryId": "924144197303",
            "repositoryName": "test",
            "repositoryUri": "924144197303.dkr.ecr.us-east-1.amazonaws.com/test",
            "createdAt": "2025-02-04T23:24:46.186000+05:30",
            "imageTagMutability": "MUTABLE",
            "imageScanningConfiguration": {
                "scanOnPush": false
            },
            "encryptionConfiguration": {
                "encryptionType": "AES256"
            }
        }
    ]
}
