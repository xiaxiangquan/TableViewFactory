//
//  MyTableViewCell.m
//  适配Demo
//
//  Created by xiaxiangquan on 15/2/10.
//  Copyright (c) 2015年 xiaxiangquan. All rights reserved.
//

#import "MyTableViewCell.h"
#import "model.h"


#define ScreenHeight ([UIScreen mainScreen].bounds.size.height):([UIScreen mainScreen].bounds.size.height - 20))

@interface MyTableViewCell()

/*  头像
 */
@property(nonatomic,weak)UIImageView *iconView;
/**
 18  *  vip图标
 19  */
@property(nonatomic,weak)UIImageView *vipView;
/**
 22  *  微博昵称
 23  */
@property(nonatomic,weak)UILabel *nameLabel;
/**
 26  *  配图
 27  */
@property(nonatomic,weak)UIImageView *pictureView;
/**
 30  *  正文
 31  */
@property(nonatomic,weak)UILabel *textLab;


@end


@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //1.添加头像
        UIImageView *img=[[UIImageView alloc]init];
        [self.contentView addSubview:img];
        self.iconView = img;
        
        //2.添加昵称
        UILabel *namelab=[[UILabel alloc]init];
        [self.contentView addSubview:namelab];
        self.nameLabel = namelab;
        
        //3.vip
        UIImageView  *vipview=[[UIImageView alloc]init];
        [self.contentView addSubview:vipview];
        self.vipView = vipview;
        
        //4.正文
        UILabel *textlab=[[UILabel alloc]init];
        [self.contentView addSubview:textlab];
        self.textLab = textlab;
        
        //5.图片
        UIImageView *picture=[[UIImageView alloc]init];
        [self.contentView addSubview:picture];
        self.pictureView =  picture;
    }
    return self;
}

- (void)setModelData:(model *)modelData{
    _modelData = modelData;
    [self settingData];
    [self settingFrame];
}

- (void)settingData {
    
    self.iconView.image = [UIImage imageNamed:self.modelData.icon];
    // 正文
    self.textLab.text = self.modelData.text;
    // 图片
    self.pictureView.image = [UIImage imageNamed:self.modelData.pic];
    // 昵称
    self.nameLabel.text = self.modelData.name;
}

- (void)settingFrame {
    
    CGFloat padding   = 10;
    CGFloat iconViewX = padding;
    CGFloat iconViewY = padding;
    CGFloat iconViewW = 60;
    CGFloat iconViewH = 60;
    self.iconView.frame  = CGRectMake(iconViewX, iconViewY, iconViewW, iconViewH);
    self.nameLabel.frame = CGRectMake(iconViewW + 20, 20, 100, 40);
    self.textLab.frame   = CGRectMake(padding, 69, 200, 40);
    self.pictureView.frame   = CGRectMake(padding + 100, 30, 40, 40);
    
}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
