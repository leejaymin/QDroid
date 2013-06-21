.class Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stickycoding/rokon/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;Z)V
    .locals 9
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 776
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    .line 770
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;IIIIII)V

    .line 773
    iput v8, p0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 774
    const/4 v0, 0x6

    iput v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 775
    iput v8, p0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    return-void

    :cond_0
    move v6, v5

    .line 770
    goto :goto_0
.end method
