//
//  PhotoAlbumView.m
//  Dec20
//
//  Created by Leonardo Lavega on 12/20/12.
//  Copyright (c) 2012 Leonardo Lavega. All rights reserved.
//

#import "PhotoAlbumView.h"

@implementation PhotoAlbumView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame withArray:(NSArray*) arr{

    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		album = arr;/*
		for(NSString *filename in arr){
			NSLog(@"file: %@",filename);
			[album addObject:[UIImage imageNamed:filename]];
		}
		
		NSLog(@"image file: %@",image.);
			[album addObject:[UIImage imageNamed:filename]];
		}*/
    }
    return self;
}




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	
	width = rect.size.width;
	height = rect.size.width;
	NSLog(@"Size:(%f,%f)",width,height);
	CGFloat x = 3;
	CGFloat y = 3;
	CGFloat boxWidth = width/4 - 3;
	CGFloat boxHeight = boxWidth;
	NSLog(@"Size of each Box:(%f,%f)",boxWidth,boxHeight);
	for(int image = 0; image < album.count; image++){
		if(image%4 == 0 && image !=0){
			x = 3;
			y += boxHeight + 3;
		}
		CGRect frame = CGRectMake(x, y, boxWidth, boxHeight);
		UIImageView *photo = [[UIImageView alloc] initWithFrame:frame];
		photo.image = [UIImage imageNamed:[album objectAtIndex:image]];
		x+= (boxWidth + 3);
		[self addSubview:photo];
	}
	
 
	// Drawing code
}


@end
