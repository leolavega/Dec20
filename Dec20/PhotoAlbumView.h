//
//  PhotoAlbumView.h
//  Dec20
//
//  Created by Leonardo Lavega on 12/20/12.
//  Copyright (c) 2012 Leonardo Lavega. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoAlbumView : UIView{
	NSArray *album;
	CGFloat width, height;
}

-(id) initWithFrame:(CGRect)frame withArray:(NSArray*) arr;
@end
