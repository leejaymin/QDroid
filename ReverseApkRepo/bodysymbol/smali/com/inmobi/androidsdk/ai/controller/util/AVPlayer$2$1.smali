.class Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2$1;
.super Ljava/lang/Object;
.source "AVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;->a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 112
    return-void
.end method
