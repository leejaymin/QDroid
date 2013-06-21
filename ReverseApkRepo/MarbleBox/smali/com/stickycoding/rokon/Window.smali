.class public Lcom/stickycoding/rokon/Window;
.super Lcom/stickycoding/rokon/DimensionalObject;
.source "Window.java"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/DimensionalObject;-><init>(FFFF)V

    .line 26
    return-void
.end method

.method public static setDefault(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 29
    const/16 v0, 0x1701

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 30
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 31
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    sget v1, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {p0, v2, v0, v1, v2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 32
    return-void
.end method


# virtual methods
.method public onUpdate(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 35
    invoke-super {p0}, Lcom/stickycoding/rokon/DimensionalObject;->onUpdate()V

    .line 36
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 37
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 38
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/Window;->width:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v2

    iget v3, p0, Lcom/stickycoding/rokon/Window;->height:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 39
    return-void
.end method
