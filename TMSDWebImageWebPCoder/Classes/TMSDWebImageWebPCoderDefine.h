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

NS_ASSUME_NONNULL_BEGIN

/**
Integer value
Quality/speed trade-off (0=fast, 6=slower-better)
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPMethod;

/**
Integer value
Number of entropy-analysis passes (in [1..10])
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPPass;

/**
 Integer value
 Preprocessing filter (0=none, 1=segment-smooth)
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPPreprocessing;

/**
 Float value
 if non-zero, specifies the minimal distortion to try to achieve. Takes precedence over target_size.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPTargetPSNR;

/**
 Integer value
 If non-zero, try and use multi-threaded encoding.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPThreadLevel;

/**
 Integer value
 If set, reduce memory usage (but increase CPU use).
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPLowMemory;

/**
 Integer value
 if non-zero, specifies the minimal distortion to try to achieve. Takes precedence over target_size.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPSegments;

/**
 Integer value
 Spatial Noise Shaping. 0=off, 100=maximum.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPSnsStrength;

/**
 Integer value
 Range: [0 = off .. 100 = strongest]
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPFilterStrength;

/**
 Integer value
 range: [0 = off .. 7 = least sharp]
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPFilterSharpness;

/**
 Integer value
 Filtering type: 0 = simple, 1 = strong (only used If filter_strength > 0 or autofilter > 0)
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPFilterType;

/**
 Integer value
 Auto adjust filter's strength [0 = off, 1 = on]
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPAutofilter;

/**
 Integer value
 Algorithm for encoding the alpha plane (0 = none, 1 = compressed with WebP lossless). Default is 1.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPAlphaCompression;

/**
 Integer value
 Predictive filtering method for alpha plane. 0: none, 1: fast, 2: best. Default if 1.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPAlphaFiltering;

/**
 Integer value
 Between 0 (smallest size) and 100 (lossless).
 Default is 100.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPAlphaQuality;

/**
 Integer value
 If true, export the compressed picture back.
 In-loop filtering is not applied.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPShowCompressed;

/**
 Integer
 Log2(number of token partitions) in [0..3]
 Default is set to 0 for easier progressive decoding.
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPPartitions;

/**
 Integer value
 Quality degradation allowed to fit the 512k limit on
 Prediction modes coding (0: no degradation, 100: maximum possible degradation).
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPPartitionLimit;

/**
 Integer value
 if needed, use sharp (and slow) RGB->YUV conversion
 */
FOUNDATION_EXPORT TMSDImageCoderOption _Nonnull const TMSDImageCoderEncodeWebPUseSharpYuv;

NS_ASSUME_NONNULL_END
