//
//  ViewController.m
//  myApp003
//
//  Created by sho634 on 2014/11/04.
//  Copyright (c) 2014年 sho634. All rights reserved.
//

#import "ViewController.h"
#import "btn1ViewController.h"
#import "btn2ViewController.h"
#import "btn3ViewController.h"

@interface ViewController ()
{
    
BOOL _PinFlag;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //////////////////////////////////////////////////////////////////////////
    MKMapView *mapView = [[MKMapView alloc] init];
    mapView.delegate = self;
    
    mapView.frame = CGRectMake(0, 20, 320, 500);
    
    CLLocationCoordinate2D co;
    
//東京の位置を表示する座標
    co.latitude = 35.689488;       //緯度
    co.longitude = 139.691706;     //軽度
    
    MKCoordinateRegion cr = mapView.region;
    
    cr.span.latitudeDelta = 6.5;
    //小さくすると詳細な地図になる
    cr.span.longitudeDelta = 6.5;
    
    cr.center = co;
    
    [mapView setRegion:cr];
    
    //地図の表示種類設定
    mapView.mapType = MKMapTypeStandard;
    //現在地を表示
    mapView.showsUserLocation = YES;
    //現在地を表示するもの[showsUserLocation]
    //上のDebug内のロケーションを選択し座標を打ち込むと現在地に青色のポイントがつく。
    
    //表示する為にビューに追加
    [self.view addSubview:mapView];
    //ポイントはピンナンバーを変えること。
    //Coの後は直接座標を入れる。
    /////////////////////////////////////////////////////////////////////////////////
   
    
    
    /*UILongPressGestureRecognizer *longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(handleLongPressGesture:)];
    longPressGestureRecognizer.delegate = self;
    [mapView addGestureRecognizer:longPressGestureRecognizer];*/
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/////////////////////////////////////////////////////////////////////////////////////
- (IBAction)tapbtn1:(id)sender {
    
    btn1ViewController *bvc = [self.storyboard   instantiateViewControllerWithIdentifier:@"btn1ViewController"];
    [[self navigationController]pushViewController:bvc animated:YES];
    
    
    
}
- (IBAction)tapbtn2:(id)sender {
    
    btn2ViewController *bvc = [self.storyboard   instantiateViewControllerWithIdentifier:@"btn2ViewController"];
    [[self navigationController]pushViewController:bvc animated:YES];
    

    
    
}
- (IBAction)tapbtn3:(id)sender {
   
    btn3ViewController *bvc = [self.storyboard   instantiateViewControllerWithIdentifier:@"btn3ViewController"];
    [[self navigationController]pushViewController:bvc animated:YES];

    
}
- (IBAction)tapredpin:(id)sender {
    _PinFlag = YES;
}
- (IBAction)tapgreenpin:(id)sender {
    _PinFlag = NO;
    
}
@end
