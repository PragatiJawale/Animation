//
//  ViewController.m
//  PJAnimation
//
//  Created by Mac on 06/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    heightOfScreen =[[UIScreen mainScreen]bounds].size.height;
    widthOfScreen =[[UIScreen mainScreen]bounds].size.width;
    
    UIPanGestureRecognizer *panGesture =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
    self.boll.userInteractionEnabled =YES;
    [self.boll addGestureRecognizer:panGesture];
    
    
}
-(void)handlePan: (UIPanGestureRecognizer *)Gesture{
    CGRect originalFrame;
    if ([Gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
        if (Gesture.state == UIGestureRecognizerStateBegan) {
            NSLog(@"Stat Began");
            originalFrame =Gesture.view.frame;
        }
        else if (Gesture.state ==UIGestureRecognizerStateChanged){
            
             CGPoint delta = [Gesture locationInView:self.view];
            Gesture.view.center =delta;
        }
        else if (Gesture.state ==UIGestureRecognizerStateEnded){
            
        }
        
    }
    else{
        NSLog(@"Pan Gesture Not Detected");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionZoomIn:(id)sender {
    [self animateZoomWithSize:100];
}

- (IBAction)actionZoomOut:(id)sender {
    [self animateZoomWithSize:-100];
}

- (IBAction)actionDirection:(id)sender {
    UIButton *button =sender;
    if (button.tag == 101) {
        [self animateUp];
    }
    else if (button.tag == 106){
        [self animateDownWithDuration:0.5 delay:0.1];
    }
    else if (button.tag == 103) {
        [self animateLeft];
    }
    else if (button.tag == 104){
        [self animateRightWithDuration:0.5 delay:0.1];
    }
     else if (button.tag == 100) {
        [self animatenorth_west];
    }
    else if (button.tag == 107){
        [self animateSouth_eastWithDuration:0.5 delay:0.1];
    }
    else if (button.tag == 102) {
        [self animatenorth_east];
    }
    else if (button.tag == 105){
        [self animateSouth_westWithDuration:0.5 delay:0.1];
    }
}


-(void)animateUp{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x, self.boll.frame.origin.y-100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"Up Animation Finished");
        }
    }];
}


-(void)animateDownWithDuration :(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime{
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x, self.boll.frame.origin.y+100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"Down Animation Finished");
        }
    }];
}


-(void)animateLeft{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x-100, self.boll.frame.origin.y, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"Left Animation Finished");
        }
    }];
}


-(void)animateRightWithDuration :(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime{
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x+100, self.boll.frame.origin.y, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"Right Animation Finished");
        }
    }];
}










-(void)animatenorth_west{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x-100, self.boll.frame.origin.y-100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"North_West Animation Finished");
        }
    }];
}


-(void)animateSouth_eastWithDuration :(NSTimeInterval)time
                          delay:(NSTimeInterval)delayTime{
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x+100, self.boll.frame.origin.y+100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"South_East Animation Finished");
        }
    }];
}


-(void)animatenorth_east{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x+100, self.boll.frame.origin.y-100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"North_East Animation Finished");
        }
    }];
}


-(void)animateSouth_westWithDuration :(NSTimeInterval)time
                                delay:(NSTimeInterval)delayTime{
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x-100, self.boll.frame.origin.y+100, self.boll.frame.size.width, self.boll.frame.size.height)];
        
    }completion:^(BOOL finished){
        if (finished) {
            NSLog(@"South_West Animation Finished");
        }
    }];
}






-(void)animateZoomWithSize :(CGFloat) Size{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.boll setFrame:CGRectMake(self.boll.frame.origin.x-100, self.boll.frame.origin.y-100, self.boll.frame.size.width + Size, self.boll.frame.size.height + Size)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"ZoomOut Animation Finished");
        }
    }];
    
}





























     
     
     @end

