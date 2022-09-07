/*
 * This file is part of the TMSDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <TMSDWebImageWebPCoder/UIImage+WebP.h>
#import <TMSDWebImageWebPCoder/TMSDImageWebPCoder.h>

@implementation UIImage (WebP)

+ (nullable UIImage *)tmsd_imageWithWebPData:(nullable NSData *)data {
    if (!data) {
        return nil;
    }
    return [[TMSDImageWebPCoder sharedCoder] decodedImageWithData:data options:0];
}

@end
