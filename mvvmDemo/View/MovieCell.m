//
//  MovieCell.m
//  mvvmDemo
//
//  Created by 王俊钢 on 2017/10/15.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "MovieCell.h"
#import "UIImageView+AFNetworking.h"

@interface MovieCell()
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *yearLabel;
@property (nonatomic,strong) UIImageView *imgView;
@end

@implementation MovieCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 10, 40, 60)];
        [self.contentView addSubview:_imgView];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 200, 20)];
        [self.contentView addSubview:_nameLabel];
        
        _yearLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 50, 100, 20)];
        _yearLabel.textColor = [UIColor lightGrayColor];
        _yearLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_yearLabel];
    }
    return self;
}

- (void)setModel:(MovieModel *)model{
    _model = model;
    _nameLabel.text = _model.movieName;
    _yearLabel.text = _model.year;
    [_imgView setImageWithURL:_model.imageUrl];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
