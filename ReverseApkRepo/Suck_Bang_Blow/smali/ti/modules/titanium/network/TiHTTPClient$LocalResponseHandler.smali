.class Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public client:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/network/TiHTTPClient;",
            ">;"
        }
    .end annotation
.end field

.field public entity:Lorg/apache/http/HttpEntity;

.field public is:Ljava/io/InputStream;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    .line 175
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    .line 177
    return-void
.end method

.method private createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;
    .locals 6
    .parameter "dumpResponseOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v3, "tihttp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 271
    .local v1, outFile:Ljava/io/File;
    new-instance v2, Lorg/appcelerator/titanium/io/TiFile;

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Lorg/appcelerator/titanium/TiContext;Ljava/io/File;Ljava/lang/String;Z)V

    .line 273
    .local v2, tiFile:Lorg/appcelerator/titanium/io/TiFile;
    if-eqz p1, :cond_0

    .line 274
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 275
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 278
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v3, v4}, Lti/modules/titanium/network/TiHTTPClient;->access$802(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 279
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {v4}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v4

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v3, v4}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 280
    return-object v2
.end method

.method private finishedReceivingEntityData(J)V
    .locals 5
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 324
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {v2}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v4}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 326
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 327
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v2, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$802(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 328
    return-void
.end method

.method private handleEntityData([BIJJ)V
    .locals 13
    .parameter "data"
    .parameter "size"
    .parameter "totalSize"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    if-nez v8, :cond_0

    .line 287
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$900(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v8

    cmp-long v8, p5, v8

    if-lez v8, :cond_3

    .line 288
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 294
    :cond_0
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$900(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v8

    cmp-long v8, p3, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    instance-of v8, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v8, :cond_1

    .line 297
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 300
    :cond_1
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 301
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v9, "ondatastream"

    invoke-virtual {v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->getCallback(Ljava/lang/String;)Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-result-object v5

    .line 302
    .local v5, onDataStreamCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    if-eqz v5, :cond_2

    .line 303
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 304
    .local v4, o:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "totalCount"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v8, "totalSize"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v8, "size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-array v3, p2, [B

    .line 309
    .local v3, blobData:[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v3, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {v8}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v9}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v3, v9}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .line 312
    .local v2, blob:Lorg/appcelerator/titanium/TiBlob;
    const-string v8, "blob"

    invoke-virtual {v4, v8, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v8, "progress"

    move-wide/from16 v0, p3

    long-to-double v0, v0

    move-wide v9, v0

    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide v11, v0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v5, v4}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    .line 317
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v3           #blobData:[B
    .end local v4           #o:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    return-void

    .line 290
    .end local v5           #onDataStreamCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, p5, v8

    if-lez v8, :cond_4

    move-wide/from16 v6, p5

    .line 291
    .local v6, streamSize:J
    :goto_1
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    long-to-int v10, v6

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->access$802(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    goto/16 :goto_0

    .line 290
    .end local v6           #streamSize:J
    :cond_4
    const-wide/16 v8, 0x200

    move-wide v6, v8

    goto :goto_1
.end method

.method private setResponseText(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$1002(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v1, 0x1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->connected:Z
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$002(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 183
    const/4 v8, 0x0

    .line 185
    .local v8, clientResponse:Ljava/lang/String;
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/network/TiHTTPClient;

    .line 187
    .local v7, c:Lti/modules/titanium/network/TiHTTPClient;
    if-eqz v7, :cond_0

    .line 188
    #setter for: Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;
    invoke-static {v7, p1}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 189
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 190
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatus(I)V

    .line 191
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatusText(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 195
    :cond_0
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :try_start_0
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity Content Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity isChunked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity isStreaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 207
    .local v10, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_2

    .line 208
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->setResponseText(Lorg/apache/http/HttpEntity;)V

    .line 209
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    .line 213
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    .line 218
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v1, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 225
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 227
    .local v5, contentLength:J
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    const/4 v2, 0x0

    .line 231
    .local v2, count:I
    const-wide/16 v3, 0x0

    .line 232
    .local v3, totalSize:J
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 233
    .local v1, buf:[B
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    const-string v0, "TiHttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #c:Lti/modules/titanium/network/TiHTTPClient;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Available: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_5
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->aborted:Z
    invoke-static {v0}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 266
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v3           #totalSize:J
    .end local v5           #contentLength:J
    .end local v10           #statusLine:Lorg/apache/http/StatusLine;
    :cond_6
    :goto_2
    return-object v8

    .line 220
    .restart local v7       #c:Lti/modules/titanium/network/TiHTTPClient;
    .restart local v10       #statusLine:Lorg/apache/http/StatusLine;
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto :goto_1

    .line 241
    .end local v7           #c:Lti/modules/titanium/network/TiHTTPClient;
    .restart local v1       #buf:[B
    .restart local v2       #count:I
    .restart local v3       #totalSize:J
    .restart local v5       #contentLength:J
    :cond_8
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;
    invoke-static {v0, v7}, Lti/modules/titanium/network/TiHTTPClient;->access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    :cond_9
    :goto_3
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_a

    .line 245
    int-to-long v11, v2

    add-long/2addr v3, v11

    move-object v0, p0

    .line 247
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleEntityData([BIJJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 248
    :catch_0
    move-exception v9

    .line 249
    .local v9, e:Ljava/io/IOException;
    const-string v0, "TiHttpClient"

    const-string v7, "Error handling entity data"

    invoke-static {v0, v7, v9}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-static {v9}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_3

    .line 253
    .end local v9           #e:Ljava/io/IOException;
    :cond_a
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_b

    .line 255
    :try_start_2
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :cond_b
    :goto_4
    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-lez v0, :cond_6

    .line 261
    invoke-direct {p0, v3, v4}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->finishedReceivingEntityData(J)V

    goto :goto_2

    .line 256
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 257
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 201
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v3           #totalSize:J
    .end local v5           #contentLength:J
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v7       #c:Lti/modules/titanium/network/TiHTTPClient;
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
