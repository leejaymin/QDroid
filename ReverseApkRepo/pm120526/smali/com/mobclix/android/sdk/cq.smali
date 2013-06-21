.class final Lcom/mobclix/android/sdk/cq;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Lcom/mobclix/android/sdk/ar;

.field b:Lcom/mobclix/android/sdk/cd;

.field c:Z

.field d:Z

.field e:Z

.field f:Lcom/mobclix/android/sdk/cf;

.field g:Ljava/lang/Object;

.field h:Landroid/widget/VideoView;

.field i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->c:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->d:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->e:Z

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->i:Z

    iput-object p1, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {p0, p0}, Lcom/mobclix/android/sdk/cq;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/cq;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/cq;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/mobclix/android/sdk/cd;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mobclix/android/sdk/cd;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cq;->c:Z

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cq;->d:Z

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cq;->e:Z

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cq;->i:Z

    iput-object p1, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    invoke-virtual {p0, p0}, Lcom/mobclix/android/sdk/cq;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cd;->a()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onCustomViewHidden"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    new-instance v2, Lcom/mobclix/android/sdk/cr;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/cr;-><init>(Lcom/mobclix/android/sdk/cq;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    const-string v2, "http://a.mobclix.com/fail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->h:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/cq;->i:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->v:Ljava/lang/ref/SoftReference;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->w:Ljava/lang/ref/SoftReference;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "html5Video"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/mobclix/android/sdk/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/cq;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/mobclix/android/sdk/cf;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    return-object v0
.end method

.method public final d()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/cq;->j:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/cq;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final e()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/mobclix/android/sdk/cq;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cq;->clearHistory()V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/cq;->clearCache(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->a()V

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->c:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->d:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cq;->e:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cq;->d:Z

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->f()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cq;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->g()V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cd;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cq;->e:Z

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
