/*
 * This file is part of the TMSDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#if __has_include(<TMSDWebImage/TMSDWebImage.h>)
#import <TMSDWebImage/TMSDWebImage.h>
#else
@import TMSDWebImage;
#endif

/**
 Built in coder that supports WebP and animated WebP
 */
@interface TMSDImageWebPCoder : NSObject <TMSDProgressiveImageCoder, TMSDAnimatedImageCoder>

@property (nonatomic, class, readonly, nonnull) TMSDImageWebPCoder *sharedCoder;

@end
