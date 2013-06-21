.class public Lcom/jjcgames/android/airhockey/GameView;
.super Landroid/view/SurfaceView;
.source "GameView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private context:Landroid/content/Context;

.field private finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

.field private game:Lcom/jjcgames/android/airhockey/Game;

.field private intent:Landroid/content/Intent;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private xdpi:F

.field private ydpi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;FFLandroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "finisher"
    .parameter "xdpi"
    .parameter "ydpi"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v3, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 16
    iput v3, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    .line 26
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/GameView;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/jjcgames/android/airhockey/GameView;->finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    .line 28
    iput p3, p0, Lcom/jjcgames/android/airhockey/GameView;->xdpi:F

    .line 29
    iput p4, p0, Lcom/jjcgames/android/airhockey/GameView;->ydpi:F

    .line 30
    iput-object p5, p0, Lcom/jjcgames/android/airhockey/GameView;->intent:Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 32
    .local v1, holder:Landroid/view/SurfaceHolder;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 33
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 34
    const-string v2, "multitouch"

    invoke-virtual {p5, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".MultitouchGame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjcgames/android/airhockey/Game;

    .line 36
    iput-object v2, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 40
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 41
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 44
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 47
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v2, Lcom/jjcgames/android/airhockey/Game;

    invoke-direct {v2}, Lcom/jjcgames/android/airhockey/Game;-><init>()V

    iput-object v2, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->finish()V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 87
    iget v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    iget-object v1, p0, Lcom/jjcgames/android/airhockey/GameView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/GameView;->finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v4, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    iget v5, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    .line 92
    iget v6, p0, Lcom/jjcgames/android/airhockey/GameView;->xdpi:F

    iget v7, p0, Lcom/jjcgames/android/airhockey/GameView;->ydpi:F

    iget-object v8, p0, Lcom/jjcgames/android/airhockey/GameView;->intent:Landroid/content/Intent;

    .line 91
    invoke-virtual/range {v0 .. v8}, Lcom/jjcgames/android/airhockey/Game;->go(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0, p1}, Lcom/jjcgames/android/airhockey/Game;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setQuitting()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->setQuitting()V

    .line 84
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    iput p3, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 56
    iput p4, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    .line 57
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    iget-object v1, p0, Lcom/jjcgames/android/airhockey/GameView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/GameView;->finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    iget v6, p0, Lcom/jjcgames/android/airhockey/GameView;->xdpi:F

    iget v7, p0, Lcom/jjcgames/android/airhockey/GameView;->ydpi:F

    iget-object v8, p0, Lcom/jjcgames/android/airhockey/GameView;->intent:Landroid/content/Intent;

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/jjcgames/android/airhockey/Game;->go(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 98
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    iput v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 63
    return-void
.end method

.method public userPause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->pause()V

    .line 76
    return-void
.end method

.method public userResume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->resume()V

    .line 80
    return-void
.end method
