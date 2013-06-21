.class Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;
.super Ljava/lang/Object;
.source "AVPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    return-object v0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2$1;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
