.class final Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;

.field private synthetic b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->c:Landroid/os/Handler;

    new-instance v2, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$1;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$1;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;->c:Landroid/os/Handler;

    new-instance v2, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1$2;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
