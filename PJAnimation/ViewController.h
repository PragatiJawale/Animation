//
//  ViewController.h
//  PJAnimation
//
//  Created by Mac on 06/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGFloat heightOfScreen ;
    CGFloat widthOfScreen;
}
@property (weak, nonatomic) IBOutlet UIImageView *boll;

- (IBAction)actionZoomIn:(id)sender;
- (IBAction)actionZoomOut:(id)sender;
- (IBAction)actionDirection:(id)sender;

@end

