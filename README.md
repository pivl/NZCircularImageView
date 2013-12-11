#NZCircularImageView

NZCircularImageView is a UIImageView extension. Its performs async download image and leaves with rounded edge.

It can be used, for example, to presenting pictures of user profiles.

## Requirements

NZCircularImageView works on any iOS version and is compatible with both ARC and non-ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework
* QuartzCore.framework

You will need LLVM 3.0 or later in order to build NZCircularImageView.

NZCircularImageView uses [SDWebImage](https://github.com/rs/SDWebImage) and [UIActivityIndicator-for-SDWebImage](https://github.com/JJSaccolo/UIActivityIndicator-for-SDWebImage) to download async images.

## Adding NZCircularImageView to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add NZCircularImageView to your project.

* Add a pod entry for NZCircularImageView to your Podfile `pod 'NZCircularImageView', '~> 0.0.1'`
* Install the pod(s) by running `pod install`.

### Source files

Alternatively you can directly add source files to your project.

1. Download the [latest code version](https://github.com/NZN/NZCircularImageView/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at NZCircularImageView folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.
3. Install [SDWebImage](https://github.com/rs/SDWebImage)
4. Install [UIActivityIndicator-for-SDWebImage](https://github.com/JJSaccolo/UIActivityIndicator-for-SDWebImage)

## Usage

The class overrides `-(void)setFrame:`, thus ensuring that every time an image is set, it will be presented in a rounded shape.
This class also uses `UIViewContentModeScaleAspectFill` contentMode with the `clipsToBounds` flag so that the image resolution is not changed.

```objective-c
// setting a rounded avatar image
circularImageView.image = [UIImage imageNamed:@"Default-Avatar"];
//
// async download image from view
//
// this method append some parameters at url:
// - width: image view width
// - height: image view height
// - mode: crop (crop image from center)
[circularImageView setImageWithResizeURL:@"http://example.com/image.pg"];
//
// ... with custom loading indicator
[self.imageView setImageWithResizeURL:kImageUrl usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//
// ... with custom loading indicator
[self.imageView setImageWithResizeURL:kImageUrl usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//
// ... with completion block
[self.imageView setImageWithResizeURL:kImageUrl
              usingActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite
                                completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
                                    NSLog(@"%s\nDownload completed", __PRETTY_FUNCTION__);
              }];
```

To enable the logs in debug/release mode, add `#define NZDEBUG` at `*-Prefix.pch` file in your project.

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each NZCircularImageView release can be found on the [wiki](https://github.com/NZN/NZCircularImageView/wiki/Change-log).
