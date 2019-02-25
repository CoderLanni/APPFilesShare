# iOS App文件共享

## 1.info.plist注册文件类型
在info.plist文件中，添加一个新的属性CFBundleDocumentTypes，这是一个数组类型的属性,这里可以注册等多个类型。

![](https://ws2.sinaimg.cn/large/006tKfTcgy1g0feokwzaxj30ej0antag.jpg)

或者在info.plist文件中以Source code的方式添加以下代码：

```
<key>CFBundleDocumentTypes</key>
<array>
<dict>
<key>CFBundleTypeName</key>
<string>BIN</string>
<key>LSHandlerRank</key>
<string>Owner</string>
<key>LSItemContentTypes</key>
<array>
<string>com.apple.macbinary-​archive</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>PDF</string>
<key>LSHandlerRank</key>
<string>Owner</string>
<key>LSItemContentTypes</key>
<array>
<string>com.adobe.pdf</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Microsoft Word</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.microsoft.word.doc</string>
<string>com.microsoft.word.wordml</string>
<string>org.openxmlformats.wordprocessingml.document</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Microsoft Excel</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.microsoft.excel.xls</string>
<string>org.openxmlformats.spreadsheetml.sheet</string>
</array>
</dict>
<dict>
<key>CFBundleTypeIconFiles</key>
<array/>
<key>CFBundleTypeName</key>
<string>Microsoft PowerPoint</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.microsoft.powerpoint.​ppt</string>
<string>org.openxmlformats.presentationml.presentation</string>
<string>public.presentation</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Text</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.text</string>
<string>public.plain-text</string>
<string>public.utf8-plain-text</string>
<string>public.utf16-external-plain-​text</string>
<string>public.utf16-plain-text</string>
<string>com.apple.traditional-mac-​plain-text</string>
<string>public.source-code</string>
<string>public.c-source</string>
<string>public.objective-c-source</string>
<string>public.c-plus-plus-source</string>
<string>public.objective-c-plus-​plus-source</string>
<string>public.c-header</string>
<string>public.c-plus-plus-header</string>
<string>com.sun.java-source</string>
<string>public.script</string>
<string>public.shell-script</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Rich Text</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.rtf</string>
<string>com.apple.rtfd</string>
<string>com.apple.flat-rtfd</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>HTML</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.html</string>
<string>public.xhtml</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Web Archive</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.apple.webarchive</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Image</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.image</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>iWork Pages</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.apple.page.pages</string>
<string>com.apple.iwork.pages.pages</string>
<string>com.apple.iwork.pages.template</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>iWork Numbers</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.apple.numbers.numbers</string>
<string>com.apple.iwork.numbers.numbers</string>
<string>com.apple.iwork.numbers.template</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>iWork Keynote</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>com.apple.keynote.key</string>
<string>com.apple.iwork.keynote.key</string>
<string>com.apple.iwork.keynote.kth</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Audio</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.audio</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Movie</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.movie</string>
</array>
</dict>
<dict>
<key>CFBundleTypeName</key>
<string>Archive</string>
<key>LSHandlerRank</key>
<string>Alternate</string>
<key>LSItemContentTypes</key>
<array>
<string>public.archive</string>
</array>
</dict>
</array>
```

## 2.到第三方App如QQ打开一个QQ不支持打开的文件，会显示用其他应用打开，点击的话会出现系统的弹框：

![](https://ws1.sinaimg.cn/large/006tKfTcgy1g0ifapu7g2j30a90i0acy.jpg)




## 3. 响应

```
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options{
//     判断传过来的url是否为文件类型
if ([url.scheme isEqualToString:@"file"]) {
UIDocumentInteractionController *vc  = [UIDocumentInteractionController interactionControllerWithURL:url];
vc.delegate = self;
[vc presentPreviewAnimated:YES];
//        ViewController *vc = [[ViewController alloc] initWithBlock:^(FileShareModel *model) {
//
//        }];

}
return YES;
}

```


## 4. 获取共享文件

```
NSFileManager *fileManager = [NSFileManager defaultManager];
NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"Inbox"];
NSArray *files = [fileManager contentsOfDirectoryAtPath:path error:nil];
NSMutableArray *dataSource = [NSMutableArray array];
```

