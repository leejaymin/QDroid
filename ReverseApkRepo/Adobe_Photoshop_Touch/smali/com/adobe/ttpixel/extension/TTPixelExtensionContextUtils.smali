.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextUtils;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final kECUtilsResultError:I = -0x3e8

.field public static final kECUtilsResultSuccess:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "trace"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnTrace;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnTrace;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getDeviceName"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetDeviceName;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetDeviceName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canLaunchApp"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "launchApp"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLaunchApp;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLaunchApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "leaveApp"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLeaveApp;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLeaveApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setStatusBarHidden"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getNetworkState"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetNetworkState;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetNetworkState;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resolveImageContentURI"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnResolveImageContentURI;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnResolveImageContentURI;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "copyURIContentToFile"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnCopyURIContentToFile;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnCopyURIContentToFile;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isolateColor"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnIsolateColor;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnIsolateColor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clipboardHasFormat"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clipboardSetFormatData"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clipboardSetMultiData"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clipboardGetFormatData"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plistToXMLString"

    new-instance v2, Lcom/adobe/ttpixel/extension/FnUnsupported;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/FnUnsupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "compressBitmapRLE"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnCompressBitmapRLE;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnCompressBitmapRLE;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPixelsEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetPixelsEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetPixelsEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setPixelsEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnSetPixelsEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnSetPixelsEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lz4Compress"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLz4Compress;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLz4Compress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lz4Uncompress"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLz4Uncompress;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLz4Uncompress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lz4Deflate"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLz4Deflate;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLz4Deflate;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lz4Inflate"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnLz4Inflate;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnLz4Inflate;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPixelsBitmapEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetPixelsBitmapEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetPixelsBitmapEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getMemoryStatsEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetMemoryStatsEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetMemoryStatsEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uncompressBitmapDataEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnUncompressBitmapDataEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnUncompressBitmapDataEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapDataToFileEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataToFileEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataToFileEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapDataFromFileEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataFromFileEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataFromFileEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getScaledPixelsEx"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetScaledPixelsEx;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetScaledPixelsEx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapFileCreateEmpty"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileCreateEmpty;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileCreateEmpty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapFileCreateFromBitmapData"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileCreateFromBitmapData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileCreateFromBitmapData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapFileWrite"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileWrite;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileWrite;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapFileRead"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileRead;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileRead;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapFileResample"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileResample;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapFileResample;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapDataCopy"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataCopy;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataCopy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmapDataResample"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataResample;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnBitmapDataResample;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getSystemInfo"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetSystemInfo;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetSystemInfo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setWakeLock"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getLocalIP"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnGetLocalIP;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnGetLocalIP;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "alphaBlend"

    new-instance v2, Lcom/adobe/ttpixel/extension/utils/FnAlphaBlend;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/utils/FnAlphaBlend;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
