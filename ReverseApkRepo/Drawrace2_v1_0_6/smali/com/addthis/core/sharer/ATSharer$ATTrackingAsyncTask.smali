.class public Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;
.super Landroid/os/AsyncTask;
.source "ATSharer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATSharer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ATTrackingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATSharer;


# direct methods
.method protected constructor <init>(Lcom/addthis/core/sharer/ATSharer;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;->this$0:Lcom/addthis/core/sharer/ATSharer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    .line 149
    iget-object v5, p0, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;->this$0:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v5}, Lcom/addthis/core/sharer/ATSharer;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v5

    iget-object v6, p0, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;->this$0:Lcom/addthis/core/sharer/ATSharer;

    invoke-virtual {v6}, Lcom/addthis/core/sharer/ATSharer;->service()Lcom/addthis/models/ATService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/addthis/utils/ATUtil;->buildUrl(Lcom/addthis/models/ATShareItem;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, trackingUrl:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 151
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 152
    .local v3, localContext:Lorg/apache/http/protocol/HttpContext;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
