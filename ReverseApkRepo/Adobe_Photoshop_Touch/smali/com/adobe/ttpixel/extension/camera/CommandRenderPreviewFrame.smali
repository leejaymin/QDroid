.class public Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;
.super Lcom/adobe/ttpixel/extension/camera/CameraCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    const-string v1, "tt_uniform_camera_matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iTransformMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iget v3, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v7

    :catchall_0
    move-exception v0

    iget-object v1, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    const-string v0, "renderPreviewFrame"

    return-object v0
.end method

.method public shouldDispatchFinishEvent()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
