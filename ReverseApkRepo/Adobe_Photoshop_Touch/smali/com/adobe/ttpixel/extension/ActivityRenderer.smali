.class Lcom/adobe/ttpixel/extension/ActivityRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

.field protected iFREContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

.field protected iFirstDelay:Z

.field protected iHeight:F

.field protected iLastSequence:I

.field protected iPrimed:Z

.field protected iWidth:F

.field protected iWorking:Z

.field private mColorBuffer:Ljava/nio/FloatBuffer;

.field protected mColorData:[F

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field protected mIndexData:[B

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertexData:[F


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFREContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iput-boolean v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iPrimed:Z

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWidth:F

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iHeight:F

    iput v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFirstDelay:Z

    iput-boolean v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWorking:Z

    const/16 v0, 0x3c

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexData:[F

    const/16 v0, 0x50

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorData:[F

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexData:[B

    return-void

    :array_0
    .array-data 0x1
        0x3t
        0x0t
        0x1t
        0x3t
        0x1t
        0x2t
        0x7t
        0x4t
        0x5t
        0x7t
        0x5t
        0x6t
        0xbt
        0x8t
        0x9t
        0xbt
        0x9t
        0xat
        0xft
        0xct
        0xdt
        0xft
        0xdt
        0xet
        0x13t
        0x10t
        0x11t
        0x13t
        0x11t
        0x12t
    .end array-data
.end method


# virtual methods
.method protected changeAnim(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexData:[F

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorData:[F

    iget v3, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWidth:F

    iget v4, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iHeight:F

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/ttpixel/extension/ActivityInfo;->initVertices([F[FFFI)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public fireCallback()V
    .locals 3

    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iPrimed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFREContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-boolean v0, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iPrimed:Z

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFREContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget v1, v1, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityUIView"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActivityInfo()Lcom/adobe/ttpixel/extension/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    return-object v0
.end method

.method public getSurfaceHeight()F
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iHeight:F

    return v0
.end method

.method public getSurfaceWidth()F
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWidth:F

    return v0
.end method

.method public getWorking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWorking:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/16 v5, 0x4100

    const/16 v4, 0x1406

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFirstDelay:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWorking:Z

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->fireCallback()V

    return-void

    :cond_0
    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    :cond_1
    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->changeAnim(I)V

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iLastSequence:I

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/ActivityInfo;->getTriangleInSequence(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    int-to-float v0, p2

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWidth:F

    int-to-float v0, p3

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iHeight:F

    invoke-virtual {p0, v1}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->changeAnim(I)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexData:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->mIndexBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setFirstDelay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFirstDelay:Z

    return-void
.end method

.method public setUpCallback(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;Lcom/adobe/ttpixel/extension/ActivityInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iFREContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iActivityInfo:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-boolean v0, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iPrimed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWorking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/ttpixel/extension/ActivityRenderer;->iWorking:Z

    return-void
.end method
