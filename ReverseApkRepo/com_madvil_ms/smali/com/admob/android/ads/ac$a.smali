.class final Lcom/admob/android/ads/ac$a;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$a;->a:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/admob/android/ads/ac$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ac;

    .line 75
    if-eqz p0, :cond_0

    .line 78
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->i:Z

    .line 79
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->f()V

    .line 80
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/ac;->a(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const-string v0, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error playing video, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ac$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ac;

    .line 91
    if-nez p0, :cond_1

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->c()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/admob/android/ads/ac$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ac;

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->a()V

    .line 71
    :cond_0
    return-void
.end method