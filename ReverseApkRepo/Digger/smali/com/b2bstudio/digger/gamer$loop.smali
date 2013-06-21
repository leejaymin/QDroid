.class Lcom/b2bstudio/digger/gamer$loop;
.super Ljava/lang/Thread;
.source "gamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b2bstudio/digger/gamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loop"
.end annotation


# static fields
.field public static final STATE_LOSE:I = 0x1

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_READY:I = 0x3

.field public static final STATE_RUNNING:I = 0x4

.field public static final STATE_WIN:I = 0x5


# instance fields
.field can:Landroid/graphics/Canvas;

.field mCanvasHeight:I

.field mCanvasWidth:I

.field public mHandler:Landroid/os/Handler;

.field mLastTime:J

.field private mMode:I

.field private mResourceHandler:Landroid/content/res/Resources;

.field private mRun:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field main:Lcom/b2bstudio/digger/main;

.field final synthetic this$0:Lcom/b2bstudio/digger/gamer;


# direct methods
.method public constructor <init>(Lcom/b2bstudio/digger/gamer;Landroid/view/SurfaceHolder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "surfaceHolder"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mRun:Z

    .line 51
    iput-object p2, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 52
    iput-object p4, p0, Lcom/b2bstudio/digger/gamer$loop;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p1, Lcom/b2bstudio/digger/gamer;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mResourceHandler:Landroid/content/res/Resources;

    .line 56
    invoke-virtual {p0}, Lcom/b2bstudio/digger/gamer$loop;->doInit()V

    return-void
.end method


# virtual methods
.method public doInit()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mResourceHandler:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/b2bstudio/graphics/library;->loadlibrary(Landroid/content/res/Resources;)V

    .line 69
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    iget-object v1, v1, Lcom/b2bstudio/digger/gamer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/b2bstudio/digger/gamer;->wt:I

    .line 71
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/b2bstudio/digger/gamer;->ht:I

    .line 72
    new-instance v1, Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/16 v3, 0x140

    if-gt v2, v3, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iget-object v3, p0, Lcom/b2bstudio/digger/gamer$loop;->mResourceHandler:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2, v3}, Lcom/b2bstudio/digger/main;-><init>(Lcom/b2bstudio/digger/gamer$loop;FLandroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->main:Lcom/b2bstudio/digger/main;

    .line 73
    invoke-virtual {p0}, Lcom/b2bstudio/digger/gamer$loop;->doStart()V

    .line 74
    return-void

    .line 72
    :cond_0
    const/high16 v2, 0x3fc0

    goto :goto_0
.end method

.method doKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->main:Lcom/b2bstudio/digger/main;

    invoke-virtual {v1, p1}, Lcom/b2bstudio/digger/main;->keyPressed(I)V

    .line 142
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(I)V

    .line 143
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 149
    :try_start_0
    iget v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/b2bstudio/digger/gamer$loop;->unpause()V

    .line 151
    monitor-exit v0

    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_0
    iget v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->main:Lcom/b2bstudio/digger/main;

    invoke-virtual {v1, p1}, Lcom/b2bstudio/digger/main;->keyReleased(I)V

    .line 156
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doStart()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mLastTime:J

    .line 79
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(I)V

    .line 77
    monitor-exit v0

    .line 81
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    iget v0, v0, Lcom/b2bstudio/digger/gamer;->ht:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->this$0:Lcom/b2bstudio/digger/gamer;

    iget v0, v0, Lcom/b2bstudio/digger/gamer;->wt:I

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 85
    :try_start_0
    iget v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(I)V

    .line 84
    :cond_0
    monitor-exit v0

    .line 87
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public redraw()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    .line 170
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->main:Lcom/b2bstudio/digger/main;

    iget-object v2, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/main;->doDraw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 179
    :cond_0
    return-void

    .line 170
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/b2bstudio/digger/gamer$loop;->can:Landroid/graphics/Canvas;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 178
    :cond_1
    throw v0
.end method

.method public declared-synchronized restoreState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(I)V

    .line 97
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 162
    :goto_0
    iget-boolean v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mRun:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->main:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->idle()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "map"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 107
    return-object p1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/b2bstudio/digger/gamer$loop;->mRun:Z

    .line 112
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 116
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(ILjava/lang/CharSequence;)V

    .line 115
    monitor-exit v0

    .line 118
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setState(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "mode"
    .parameter "message"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 122
    :try_start_0
    iput p1, p0, Lcom/b2bstudio/digger/gamer$loop;->mMode:I

    .line 124
    iget v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mRun:Z

    .line 121
    :goto_0
    monitor-exit v0

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mRun:Z

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSurfaceSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 134
    :try_start_0
    iput p1, p0, Lcom/b2bstudio/digger/gamer$loop;->mCanvasWidth:I

    .line 135
    iput p2, p0, Lcom/b2bstudio/digger/gamer$loop;->mCanvasHeight:I

    .line 133
    monitor-exit v0

    .line 137
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unpause()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/b2bstudio/digger/gamer$loop;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/b2bstudio/digger/gamer$loop;->mLastTime:J

    .line 92
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/gamer$loop;->setState(I)V

    .line 90
    monitor-exit v0

    .line 94
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
