.class public abstract Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;

.field private final b:Lcom/scoreloop/client/android/core/model/Session;


# direct methods
.method protected constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;

    .line 22
    iput-object p2, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->b:Lcom/scoreloop/client/android/core/model/Session;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Throwable;)V
.end method

.method protected abstract a(Lorg/apache/http/HttpResponse;)V
.end method

.method protected final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;->b:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->e()Lcom/scoreloop/client/android/core/server/Server;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest$1;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/server/Server;->a(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
