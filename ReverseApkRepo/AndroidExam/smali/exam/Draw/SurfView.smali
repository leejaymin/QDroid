.class Lexam/Draw/SurfView;
.super Landroid/view/SurfaceView;
.source "Reflection2.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/SurfView$DrawThread;
    }
.end annotation


# static fields
.field static final DELAY:I = 0x32

.field static final RAD:I = 0x18


# instance fields
.field arBall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Draw/Ball;",
            ">;"
        }
    .end annotation
.end field

.field mBack:Landroid/graphics/Bitmap;

.field mHolder:Landroid/view/SurfaceHolder;

.field mThread:Lexam/Draw/SurfView$DrawThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/SurfView;->mBack:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p0}, Lexam/Draw/SurfView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/SurfView;->mHolder:Landroid/view/SurfaceHolder;

    .line 96
    iget-object v0, p0, Lexam/Draw/SurfView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v2, p0, Lexam/Draw/SurfView;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 128
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x18

    invoke-static {v1, v3, v4}, Lexam/Draw/Ball;->Create(III)Lexam/Draw/Ball;

    move-result-object v0

    .line 129
    .local v0, NewBall:Lexam/Draw/Ball;
    iget-object v1, p0, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v2

    .line 131
    const/4 v1, 0x1

    .line 133
    .end local v0           #NewBall:Lexam/Draw/Ball;
    :goto_0
    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 119
    iget-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    invoke-virtual {v0, p3, p4}, Lexam/Draw/SurfView$DrawThread;->SizeChange(II)V

    .line 122
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 101
    new-instance v0, Lexam/Draw/SurfView$DrawThread;

    iget-object v1, p0, Lexam/Draw/SurfView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lexam/Draw/SurfView$DrawThread;-><init>(Lexam/Draw/SurfView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    .line 102
    iget-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    invoke-virtual {v0}, Lexam/Draw/SurfView$DrawThread;->start()V

    .line 103
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 107
    iget-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexam/Draw/SurfView$DrawThread;->bExit:Z

    .line 110
    :goto_0
    :try_start_0
    iget-object v0, p0, Lexam/Draw/SurfView;->mThread:Lexam/Draw/SurfView$DrawThread;

    invoke-virtual {v0}, Lexam/Draw/SurfView$DrawThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
