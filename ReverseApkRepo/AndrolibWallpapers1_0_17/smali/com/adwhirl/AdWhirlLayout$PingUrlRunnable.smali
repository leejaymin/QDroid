.class Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;
.super Ljava/lang/Object;
.source "AdWhirlLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/AdWhirlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingUrlRunnable"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;->url:Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "AdWhirl SDK"

    .line 360
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_0

    const-string v3, "AdWhirl SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pinging URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 363
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_1

    const-string v3, "AdWhirl SDK"

    const-string v3, "Caught ClientProtocolException in PingUrlRunnable"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 369
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_1

    const-string v3, "AdWhirl SDK"

    const-string v3, "Caught IOException in PingUrlRunnable"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
