//
//  ViewController.m
//  timeDemo
//
//  Created by shuzhenguo on 2016/10/14.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


//    NSString*str=@"1476762417";//时间戳
//    
//    NSTimeInterval time=[str doubleValue]+28800;//因为时差问题要加8小时 == 28800 sec
//    
//    NSDate*detaildate=[NSDate dateWithTimeIntervalSince1970:time];
//    
////    NSLog(@"date:%@",[detaildate  description]);
//    
//    //实例化一个NSDateFormatter对象
//    
//    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
//    
//    //设定时间格式,这里可以设置成自己需要的格式
//    
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    
//    NSString*currentDateStr = [dateFormatter stringFromDate:detaildate];
//    
//    NSLog(@"currentDateStr:%@-----",currentDateStr);
    
    
//    NSLog(@"bbbb-----%@bbbbb-----",[self dateWithTimeIntervalSinModify:@"1476762417000"]);
    
    NSLog(@"hhh-----%@hhhhh-----",[self dateWithTimeIntervalSin:@"1476762417000"]);

    
}

//-(NSString *)dateWithTimeIntervalSinModify:(NSString *)dateStr{
//    
//    NSString*str=[NSString stringWithFormat:@"%ld",[dateStr integerValue]/1000];//时间戳
//    NSTimeInterval time=[str doubleValue]+28800;//因为时差问题要加8小时 == 28800 sec
//    NSDate*detaildate=[NSDate dateWithTimeIntervalSince1970:time];
//    //    NSLog(@"date:%@",[detaildate  description]);
//    //实例化一个NSDateFormatter对象
//    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
//    
//    //设定时间格式,这里可以设置成自己需要的格式
//    
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    
//    NSString*currentDateStr = [dateFormatter stringFromDate:detaildate];
//    
//    
//    return currentDateStr;
//    
//}


-(NSString *)dateWithTimeIntervalSin:(NSString *)dateStr{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    //    [formatter setDateFormat:@"yyyy-MM-dd  HH:mm"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:[dateStr longLongValue]/1000];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)timeStringClick:(id)sender {
    
    NSLog(@"dateFromStringyyyyMMdd----%@",[self dateFromStringyyyyMMdd:@"2016-10-18 16:37:54"]);

}

- (IBAction)timeDateClick:(id)sender {
    
    
    NSLog(@"dateFromStringyyyyMMddHHmmss---%@",[self dateFromStringyyyyMMddHHmmss:@"2016-10-18 16:37:54"]);

    NSLog(@"stringFromDatemmsszzz---%@",[self stringFromDateyyMMdd:[self dateFromStringyyyyMMddHHmmss:@"2016-10-18 16:37:54"]]);
    NSString *stringTime=[self stringFromDateyyMMdd:[self dateFromStringyyyyMMddHHmmss:@"2016-10-18 16:37:54"]];
    
    
    NSLog(@"dateFromStringyyyyMMdd---%@",[self dateFromStringyyyyMMdd :stringTime]);

    NSLog(@"stringFromDateyyMMdd---%@",[self stringFromDateyyMMdd:[self dateFromStringyyyyMMdd :stringTime]]);


    NSLog(@"直接转换--%@",[self dateFromStringyyyyMMdd :@"2016-10-28"]);
    
    
    NSLog(@"年月日转换date--%@",[self stringFromDateyyMMdd:[NSDate date]]);
    
    
//    NSLog(@"再回转：--%@",[self dateFromStringyyyyMMdd :[self stringFromDateyyMMdd:[NSDate date]]])
//    ;
    
    
    
    NSLog(@"timeIntervalSince1970----%f",[[NSDate date]timeIntervalSince1970])
    ;
    
    
    
//    [self stringFromDatemmsszzz:[self dateFromStringyyyyMMddHHmmss:@"2016-10-18 16:37:54"]];
}


//NSString转NSDate
-(NSDate*)dateFromStringyyyyMMddHHmmss:(NSString*)string
{
    //需要转换的字符串
    //    NSString*dateString=@"2015-06-2608:08:08";
    //设置转换格式
    NSDateFormatter*formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //NSString转NSDate
    NSDate*date=[formatter dateFromString:string];
    
    
    
    return date;
}



-(NSString *)stringFromDateyyMMdd:(NSDate*)date{
    NSDate*currentDate=[NSDate date];
    //用于格式化NSDate对象
    NSDateFormatter*dateFormatter=[[NSDateFormatter alloc]init];
    //设置格式：zzz表示时区
    [  dateFormatter setDateFormat:@"yyyy-MM-dd"];
    //NSDate转NSString
    NSString*currentDateString=[  dateFormatter stringFromDate:currentDate];
    //输出currentDateString
    return currentDateString;
    
    
}



//年月日
-(NSDate*)dateFromStringyyyyMMdd:(NSString*)string
{
    //需要转换的字符串
    //    NSString*dateString=@"2015-06-2608:08:08";
    //设置转换格式
    
    NSDateFormatter*formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    //NSString转NSDate
    NSDate*date=[formatter dateFromString:string];
    
    
    
    return date;
}

@end
