.class final Lcom/mobclix/android/sdk/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/cq;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onCustomViewHidden"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    iget-object v1, v1, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    iget-object v1, v1, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cr;->a:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MobclixWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method
