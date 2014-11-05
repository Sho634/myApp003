//
//  ViewController.h
//  myApp003
//
//  Created by sho634 on 2014/11/04.
//  Copyright (c) 2014年 sho634. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController<MKMapViewDelegate>

////////////////////////////////////////
@property (weak, nonatomic) IBOutlet UIButton *btn1;

- (IBAction)tapbtn1:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btn2;

- (IBAction)tapbtn2:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btn3;

- (IBAction)tapbtn3:(id)sender;
/////////////////////////////////////////
//タップすると色が赤に代わりピンを立てる
@property (weak, nonatomic) IBOutlet UIButton *redpin;

- (IBAction)tapredpin:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *greenpin;


- (IBAction)tapgreenpin:(id)sender;




//BOOL _visibleFlag; //水色のビューが表示されている:YES 非表示：NO


@end

