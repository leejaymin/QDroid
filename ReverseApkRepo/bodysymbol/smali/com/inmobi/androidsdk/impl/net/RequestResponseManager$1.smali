.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;
.super Ljava/lang/Thread;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private final synthetic b:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private final synthetic c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

.field private final synthetic d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Serving URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "InMobiAndroidSDK_3.5.2"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-static {v2, v0, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {v2, v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1, v0, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/AdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception Retriving Ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdException;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 109
    :sswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 111
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NO_FILL:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 109
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 104
    :sswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 106
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 104
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 116
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 114
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 119
    :sswitch_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 121
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 119
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 124
    :sswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 126
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 124
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 129
    :sswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 131
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 129
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :sswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 136
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 134
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception Retriving Ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 145
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 144
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 148
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception Retriving Ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 152
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 151
    invoke-interface {v0, v5, v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method
