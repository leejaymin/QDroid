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
    .locals 2
    .parameter "context"
    .parameter "finisher"
    .parameter "xdpi"
    .parameter "ydpi"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 16
    iput v1, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

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

    move-result-object v0

    .line 32
    .local v0, holder:Landroid/view/SurfaceHolder;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 33
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 34
    new-instance v1, Lcom/jjcgames/android/airhockey/Game;

    invoke-direct {v1}, Lcom/jjcgames/android/airhockey/Game;-><init>()V

    iput-object v1, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    .line 35
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->finish()V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 73
    iget v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    iget-object v1, p0, Lcom/jjcgames/android/airhockey/GameView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/GameView;->finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v4, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    iget v5, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    .line 78
    iget v6, p0, Lcom/jjcgames/android/airhockey/GameView;->xdpi:F

    iget v7, p0, Lcom/jjcgames/android/airhockey/GameView;->ydpi:F

    iget-object v8, p0, Lcom/jjcgames/android/airhockey/GameView;->intent:Landroid/content/Intent;

    .line 77
    invoke-virtual/range {v0 .. v8}, Lcom/jjcgames/android/airhockey/Game;->go(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0, p1}, Lcom/jjcgames/android/airhockey/Game;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setQuitting()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->setQuitting()V

    .line 70
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    iput p3, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 42
    iput p4, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    .line 43
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

    .line 44
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 84
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceHeight:I

    iput v0, p0, Lcom/jjcgames/android/airhockey/GameView;->surfaceWidth:I

    .line 49
    return-void
.end method

.method public userPause()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->pause()V

    .line 62
    return-void
.end method

.method public userResume()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameView;->game:Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/Game;->resume()V

    .line 66
    return-void
.end method
