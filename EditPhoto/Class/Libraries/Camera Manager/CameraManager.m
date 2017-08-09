//
//  CameraManager.m
//  EditPhoto
//
//  Created by chitra on 8/4/17.
//  Copyright © 2017 chitra. All rights reserved.
//

#import "CameraManager.h"

@interface CameraManager()
{
    AVCaptureSession           *captureSession;
    AVCaptureDeviceInput       *vedioInput;
    AVCaptureVideoDataOutput   *vedioOutput;
    AVCapturePhotoOutput       *photoOutput;
    AVCaptureAudioDataOutput   *audioOutput;
    AVCaptureVideoPreviewLayer *videoPreviewLayer;
    AVCaptureDevice            *frontCameraDevice;
    AVCaptureDevice            *backCameraDevice;
}

@end

@implementation CameraManager

-(id) init
{
    self = [super init];
    if(self)
    {
        [self setupAVCapture];
    }
    return self;
}

-(void) setupAVCapture
{
    frontCameraDevice = nil;
    backCameraDevice  = nil;
    AVCaptureDevice *camera = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if(camera.position == AVCaptureDevicePositionBack)
        backCameraDevice = camera;
    if(camera.position == AVCaptureDevicePositionFront)
        frontCameraDevice = camera;
    
    captureSession = AVCaptureSession.new;
    [captureSession setSessionPreset:AVCaptureSessionPresetHigh];
    [captureSession startRunning];
    
}

@end
