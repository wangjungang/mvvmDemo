//
//  HomeViewController.m
//  mvvmDemo
//
//  Created by 王俊钢 on 2017/10/15.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "HomeViewController.h"
#import "MovieCell.h"
#import "MovieViewModel.h"

@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *table;
@property (nonatomic,strong) NSArray *modelArray;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.table];
    [self.table registerClass:[MovieCell class] forCellReuseIdentifier:@"MovieCell"];
    
    MovieViewModel *viewModel = [[MovieViewModel alloc] init];
    viewModel.returnBlock = ^(id returnValue){
        
        _modelArray = returnValue;
        [self.table reloadData];
    };
    viewModel.errorBlock = ^(id errorCode){
        
        NSLog(@"%@",errorCode);
    };
    
    [viewModel getMovieData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getteres

-(UITableView *)table
{
    if(!_table)
    {
        _table = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _table.dataSource = self;
        _table.delegate = self;
        _table.rowHeight = 80;
    }
    return _table;
}

#pragma mark -UITableViewDataSource&&UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];
    cell.model = _modelArray[indexPath.row];
    return cell;
}

@end
