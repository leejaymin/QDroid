.class Lexam/Draw/SurfView$DrawThread;
.super Ljava/lang/Thread;
.source "Reflection2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/SurfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawThread"
.end annotation


# instance fields
.field bExit:Z

.field mHeight:I

.field mHolder:Landroid/view/SurfaceHolder;

.field mWidth:I

.field final synthetic this$0:Lexam/Draw/SurfView;


# direct methods
.method constructor <init>(Lexam/Draw/SurfView;Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter
    .parameter "Holder"

    .prologue
    .line 141
    iput-object p1, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    iput-object p2, p0, Lexam/Draw/SurfView$DrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexam/Draw/SurfView$DrawThread;->bExit:Z

    .line 144
    return-void
.end method


# virtual methods
.method public SizeChange(II)V
    .locals 0
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 147
    iput p1, p0, Lexam/Draw/SurfView$DrawThread;->mWidth:I

    .line 148
    iput p2, p0, Lexam/Draw/SurfView$DrawThread;->mHeight:I

    .line 149
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 156
    :goto_0
    iget-boolean v3, p0, Lexam/Draw/SurfView$DrawThread;->bExit:Z

    if-eqz v3, :cond_0

    .line 183
    :goto_1
    return-void

    .line 158
    :cond_0
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 168
    iget-object v4, p0, Lexam/Draw/SurfView$DrawThread;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 170
    .local v1, canvas:Landroid/graphics/Canvas;
    if-nez v1, :cond_3

    monitor-exit v4

    goto :goto_1

    .line 168
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 159
    :cond_1
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/Ball;

    .line 160
    .local v0, B:Lexam/Draw/Ball;
    iget v3, p0, Lexam/Draw/SurfView$DrawThread;->mWidth:I

    iget v4, p0, Lexam/Draw/SurfView$DrawThread;->mHeight:I

    invoke-virtual {v0, v3, v4}, Lexam/Draw/Ball;->Move(II)V

    .line 161
    iget v3, v0, Lexam/Draw/Ball;->count:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 162
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 158
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    .end local v0           #B:Lexam/Draw/Ball;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    :cond_3
    const/high16 v3, -0x100

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 172
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->mBack:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 174
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 178
    :cond_4
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 168
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const-wide/16 v3, 0x32

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 175
    :cond_5
    :try_start_3
    iget-object v3, p0, Lexam/Draw/SurfView$DrawThread;->this$0:Lexam/Draw/SurfView;

    iget-object v3, v3, Lexam/Draw/SurfView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexam/Draw/Ball;

    invoke-virtual {v3, v1}, Lexam/Draw/Ball;->Draw(Landroid/graphics/Canvas;)V

    .line 176
    iget-boolean v3, p0, Lexam/Draw/SurfView$DrawThread;->bExit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
