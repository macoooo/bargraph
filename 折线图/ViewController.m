//
//  ViewController.m
//  折线图
//
//  Created by 强淑婷 on 2019/1/27.
//  Copyright © 2019年 强淑婷. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(NSMutableArray *)x_names{
    if (!_x_names) {
        _x_names = [NSMutableArray arrayWithArray:@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12"]];
    }
    return _x_names;
}
/**
 *  Y轴值
 */
-(NSMutableArray *)targets{
    if (!_targets) {
        _targets = [NSMutableArray arrayWithArray:@[@20,@40,@20,@50,@30,@90,@30,@100,@70,@20,@40,@20]];
    }
    return _targets;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.logHistogramView = [[BCLLogHistogramView alloc]initWithFrame:CGRectMake(40, 50, 300, 280)];
    self.logHistogramView.center = self.view.center;
    [self.view addSubview:_logHistogramView];
    [self drawBaseChart];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)drawBaseChart {
    //[self.logHistogramView drawBarChartViewWithX_Value_Names:self.x_names TargetValues:self.targets AdddistanceValues:18 StartingValues:20 ProportionValuess:100];
    [self.logHistogramView drawBarChartViewWithX_Value_Names:self.x_names TargetValues:self.targets];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
