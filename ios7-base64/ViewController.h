//
//  ViewController.h
//  ios7-base64
//
//  Created by wwwins on 2013/11/1.
//  Copyright (c) 2013年 wwwins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UITextField *result;
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *start_decode;
@property (weak, nonatomic) IBOutlet UITextField *decode;

@end
