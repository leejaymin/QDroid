.class public Lcom/stickycoding/rokon/RokonSurfaceView;
.super Lcom/stickycoding/rokon/GLSurfaceView;
.source "RokonSurfaceView.java"


# instance fields
.field protected renderer:Lcom/stickycoding/rokon/RokonRenderer;

.field protected rokonActivity:Lcom/stickycoding/rokon/RokonActivity;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/RokonActivity;)V
    .locals 1
    .parameter "rokonActivity"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 32
    new-instance v0, Lcom/stickycoding/rokon/RokonRenderer;

    invoke-direct {v0, p1}, Lcom/stickycoding/rokon/RokonRenderer;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->renderer:Lcom/stickycoding/rokon/RokonRenderer;

    .line 33
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->renderer:Lcom/stickycoding/rokon/RokonRenderer;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonSurfaceView;->setRenderer(Lcom/stickycoding/rokon/GLSurfaceView$Renderer;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonSurfaceView;->setKeepScreenOn(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/stickycoding/rokon/RokonActivity;Lcom/stickycoding/rokon/RokonRenderer;)V
    .locals 1
    .parameter "rokonActivity"
    .parameter "renderer"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 19
    iput-object p2, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->renderer:Lcom/stickycoding/rokon/RokonRenderer;

    .line 20
    invoke-virtual {p0, p2}, Lcom/stickycoding/rokon/RokonSurfaceView;->setRenderer(Lcom/stickycoding/rokon/GLSurfaceView$Renderer;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonSurfaceView;->setKeepScreenOn(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonSurfaceView;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/RokonActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method
