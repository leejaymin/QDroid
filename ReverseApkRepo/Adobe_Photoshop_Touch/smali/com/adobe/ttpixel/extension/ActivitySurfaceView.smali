.class Lcom/adobe/ttpixel/extension/ActivitySurfaceView;
.super Landroid/opengl/GLSurfaceView;


# instance fields
.field protected iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/adobe/ttpixel/extension/ActivityRenderer;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p0, v6}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getActivityRenderer()Lcom/adobe/ttpixel/extension/ActivityRenderer;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->setWorking(Z)V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method
