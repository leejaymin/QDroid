.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final LEVEL_FINISHED:Ljava/lang/String; = "finished"

.field public static final LEVEL_PROGRESS:Ljava/lang/String; = "progress"


# instance fields
.field private exporterPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->exporterPtr:J

    return-void
.end method

.method public static native clearEncodedData(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)Z
.end method

.method public static native getEncodedData(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;Ljava/nio/ByteBuffer;)Z
.end method

.method public static native getEncodedDataSize(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)I
.end method

.method public static native getEncodingProgress(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)I
.end method

.method public static native hasFinishedEncoding(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)Z
.end method

.method public static native isPossiblyPremultipliedData(IIILjava/nio/ByteBuffer;)Z
.end method

.method public static native premultiplyData(IIILjava/nio/ByteBuffer;)V
.end method

.method public static native requestCancel(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)V
.end method

.method public static native startEncodeJPEG(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;IIZZILjava/nio/ByteBuffer;FLjava/lang/String;)Z
.end method

.method public static native startEncodeLz4(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;Ljava/nio/ByteBuffer;)Z
.end method

.method public static native startEncodePNG(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;IIZZILjava/nio/ByteBuffer;)Z
.end method

.method public static native startEncodeZLib(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;Ljava/nio/ByteBuffer;)Z
.end method

.method public static native unPremultiplyData(IIILjava/nio/ByteBuffer;)V
.end method

.method public static native waitFinishedEncoding(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)I
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

    const-string v1, "startEncodeLz4"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeLz4;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeLz4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startEncodeZLib"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeZLib;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeZLib;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startEncodeJPEG"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeJPEG;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeJPEG;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startEncodePNG"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodePNG;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnStartEncodePNG;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getEncodedData"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodedData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodedData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getEncodedDataSize"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodedDataSize;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodedDataSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getEncodingProgress"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodingProgress;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnGetEncodingProgress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasFinishedEncoding"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnHasFinishedEncoding;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnHasFinishedEncoding;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestCancel"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnRequestCancel;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnRequestCancel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitFinishedEncoding"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnWaitFinishedEncoding;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnWaitFinishedEncoding;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clearEncodedData"

    new-instance v2, Lcom/adobe/ttpixel/extension/impexp/FnClearEncodedData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/impexp/FnClearEncodedData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onEncodingFinished(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finished"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onEncodingProgress(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
