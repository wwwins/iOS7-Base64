//
//  ViewController.m
//  ios7-base64
//
//  Created by wwwins on 2013/11/1.
//  Copyright (c) 2013年 wwwins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.input.delegate = self;
}
- (IBAction)start:(id)sender {
    
    NSLog(@"start encode");
    NSString *string = self.input.text;
    NSString *output = [[string dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    self.result.text = output;
    NSLog(@"output: %@", output);
    
}
- (IBAction)startDecode:(id)sender {
    NSString *string = self.result.text;
    NSData *decodeData = [[NSData alloc] initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSString *output = [[NSString alloc] initWithData:decodeData encoding:NSUTF8StringEncoding];
    self.decode.text = output;
    
}

// hidden keyboard
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchBegan:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

// clean init text
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"shouldBeginEditing");
    self.input.text = @"";
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"shouldEndEditing");
    return YES;
}

-(BOOL)textFieldShouldClear:(UITextField *)textField{
    NSLog(@"shouldClear");
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"shouldReturn:%d",textField.tag);
    // jump to next textfield
    return YES;
}

// get user input
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"range:%d,string:%d,out:%@",range.length,string.length,string);
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
