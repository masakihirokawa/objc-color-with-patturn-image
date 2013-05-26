//
//  ViewController.m
//  PatturnImage
//
//  Created by Dolice on 2013/05/26.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setBackgroundPatternImage];
}

- (void)setBackgroundPatternImage
{
    //ラベル初期化
    UILabel *label = [[UILabel alloc] init];
    
    //ラベルのサイズを画面に合わせる
    label.frame = self.view.bounds;
    
    //マスク適用
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    //パターン画像を格納
    UIImage *image = [UIImage imageNamed:@"background_pattern.jpg"];
    
    //パターン画像を背景に適用
    label.backgroundColor = [UIColor colorWithPatternImage:image];
    
    //ラベルを画面に表示｀
    [self.view addSubview:label];
}

@end
