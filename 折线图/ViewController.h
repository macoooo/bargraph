//
//  ViewController.h
//  折线图
//
//  Created by 强淑婷 on 2019/1/27.
//  Copyright © 2019年 强淑婷. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCLLogHistogramView.h"

@interface ViewController : UIViewController
@property (nonatomic, strong) BCLLogHistogramView *logHistogramView;
@property (strong,nonatomic)NSMutableArray *x_names;
@property (strong,nonatomic)NSMutableArray *targets;

@end

