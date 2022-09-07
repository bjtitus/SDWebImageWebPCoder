/*
 * This file is part of the TMSDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <TMSDWebImageWebPCoder/ViewController.h>
#import <TMSDWebImageWebPCoder/TMSDWebImageWebPCoder.h>
#import <TMSDWebImage/TMSDWebImage.h>

@interface ViewController ()
@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) TMSDAnimatedImageView *imageView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [TMSDImageCache.sharedImageCache clearDiskOnCompletion:nil];
    
    [[TMSDImageCodersManager sharedManager] addCoder:[TMSDImageWebPCoder sharedCoder]];
    
    self.imageView1 = [UIImageView new];
    self.imageView1.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView1];
    
    self.imageView2 = [TMSDAnimatedImageView new];
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView2];
    
    NSURL *staticWebPURL = [NSURL URLWithString:@"https://www.gstatic.com/webp/gallery/2.webp"];
    NSURL *animatedWebPURL = [NSURL URLWithString:@"http://littlesvr.ca/apng/images/world-cup-2014-42.webp"];
    
    [self.imageView1 tmsd_setImageWithURL:staticWebPURL placeholderImage:nil options:0 context:@{TMSDWebImageContextImageThumbnailPixelSize : @(CGSizeMake(300, 300))} progress:nil completed:^(UIImage * _Nullable image, NSError * _Nullable error, TMSDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if (image) {
            NSLog(@"%@", @"Static WebP load success");
        }
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSUInteger maxFileSize = 4096;
            NSData *webpData = [TMSDImageWebPCoder.sharedCoder encodedDataWithImage:image format:TMSDImageFormatWebP options:@{TMSDImageCoderEncodeMaxFileSize : @(maxFileSize)}];
            if (webpData) {
                NSCAssert(webpData.length <= maxFileSize, @"WebP Encoding with max file size limit works");
                NSLog(@"%@", @"WebP encoding success");
            }
        });
    }];
    [self.imageView2 tmsd_setImageWithURL:animatedWebPURL placeholderImage:nil options:TMSDWebImageProgressiveLoad completed:^(UIImage * _Nullable image, NSError * _Nullable error, TMSDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if (image) {
            NSLog(@"%@", @"Animated WebP load success");
        }
    }];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    self.imageView2.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
