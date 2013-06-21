.class final Lcom/mobclix/android/sdk/ah;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/mobclix/android/sdk/cq;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/VideoView;

.field private g:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ah;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->c:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->d:Lcom/mobclix/android/sdk/cq;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->e:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->g:Landroid/widget/MediaController;

    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/ah;->b:Landroid/app/Activity;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ah;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ah;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->c:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/cq;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->d:Lcom/mobclix/android/sdk/cq;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->w:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->e:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->w:Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->g:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->g:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->g:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ah;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->w:Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ah;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ah;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ah;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/ah;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/ah;->f:Landroid/widget/VideoView;

    return-void
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/ah;)Lcom/mobclix/android/sdk/cq;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->d:Lcom/mobclix/android/sdk/cq;

    return-object v0
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/ah;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
