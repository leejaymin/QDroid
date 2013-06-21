.class public Lcom/stickycoding/rokon/RokonRenderer;
.super Ljava/lang/Object;
.source "RokonRenderer.java"

# interfaces
.implements Lcom/stickycoding/rokon/GLSurfaceView$Renderer;


# static fields
.field public static singleton:Lcom/stickycoding/rokon/RokonRenderer;


# instance fields
.field private drawLock:Ljava/lang/Object;

.field private drawQueue:Lcom/stickycoding/rokon/ObjectManager;

.field private drawQueueChanged:Z

.field private rokonActivity:Lcom/stickycoding/rokon/RokonActivity;


# direct methods
.method protected constructor <init>(Lcom/stickycoding/rokon/RokonActivity;)V
    .locals 1
    .parameter "rokonActivity"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawLock:Ljava/lang/Object;

    .line 39
    sput-object p0, Lcom/stickycoding/rokon/RokonRenderer;->singleton:Lcom/stickycoding/rokon/RokonRenderer;

    .line 40
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonRenderer;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueueChanged:Z

    .line 42
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    .line 48
    invoke-static {p1}, Lcom/stickycoding/rokon/GLHelper;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 50
    invoke-static {}, Lcom/stickycoding/rokon/Time;->update()V

    .line 52
    sget-boolean v9, Lcom/stickycoding/rokon/RokonActivity;->engineLoaded:Z

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v9, :cond_1

    .line 53
    const/4 v9, 0x1

    sput-boolean v9, Lcom/stickycoding/rokon/RokonActivity;->engineLoaded:Z

    .line 54
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 55
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v9}, Lcom/stickycoding/rokon/RokonActivity;->onLoadComplete()V

    .line 56
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->rokonActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v9}, Lcom/stickycoding/rokon/RokonActivity;->startThread()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/stickycoding/rokon/FPSCounter;->onFrame()V

    .line 62
    sget-object v7, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 64
    .local v7, scene:Lcom/stickycoding/rokon/Scene;
    if-eqz v7, :cond_0

    .line 66
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v9

    .line 67
    :try_start_0
    iget-boolean v10, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueueChanged:Z

    if-nez v10, :cond_2

    .line 68
    :goto_1
    iget-boolean v10, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueueChanged:Z

    if-eqz v10, :cond_6

    .line 76
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueueChanged:Z

    .line 66
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    invoke-static {}, Lcom/stickycoding/rokon/TextureManager;->checkRefreshTextures()V

    .line 80
    invoke-virtual {v7}, Lcom/stickycoding/rokon/Scene;->checkForcedTextures()V

    .line 83
    monitor-enter p0

    .line 85
    :try_start_1
    iget-boolean v9, v7, Lcom/stickycoding/rokon/Scene;->useNewClearColor:Z

    if-eqz v9, :cond_3

    .line 86
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, v7, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, v7, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    iget-object v12, v7, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 87
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/stickycoding/rokon/Scene;->useNewClearColor:Z

    .line 90
    :cond_3
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueue:Lcom/stickycoding/rokon/ObjectManager;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueue:Lcom/stickycoding/rokon/ObjectManager;

    invoke-virtual {v9}, Lcom/stickycoding/rokon/ObjectManager;->getObjects()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v9

    if-lez v9, :cond_b

    .line 92
    invoke-virtual {v7, p1}, Lcom/stickycoding/rokon/Scene;->onPreDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 94
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    move v2, v9

    .line 95
    .local v2, hasWindow:Z
    :goto_2
    const/4 v4, 0x0

    .line 97
    .local v4, isWindow:Z
    const/16 v9, 0x4000

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 99
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->background:Lcom/stickycoding/rokon/Background;

    if-eqz v9, :cond_4

    .line 100
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->background:Lcom/stickycoding/rokon/Background;

    invoke-virtual {v9, p1}, Lcom/stickycoding/rokon/Background;->onDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    :cond_4
    if-eqz v2, :cond_5

    .line 104
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v9, p1}, Lcom/stickycoding/rokon/Window;->onUpdate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 105
    const/4 v4, 0x1

    .line 108
    :cond_5
    const/16 v9, 0x1700

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 109
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 111
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueue:Lcom/stickycoding/rokon/ObjectManager;

    invoke-virtual {v9}, Lcom/stickycoding/rokon/ObjectManager;->getObjects()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v6

    .line 112
    .local v6, objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v5

    .line 113
    .local v5, objectArray:[Ljava/lang/Object;
    iget-object v9, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueue:Lcom/stickycoding/rokon/ObjectManager;

    invoke-virtual {v9}, Lcom/stickycoding/rokon/ObjectManager;->getObjects()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 114
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-lt v3, v0, :cond_8

    .line 138
    invoke-virtual {v7, p1}, Lcom/stickycoding/rokon/Scene;->onPostDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 140
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/stickycoding/rokon/GLHelper;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 83
    .end local v0           #count:I
    .end local v2           #hasWindow:Z
    .end local v3           #i:I
    .end local v4           #isWindow:Z
    .end local v5           #objectArray:[Ljava/lang/Object;
    .end local v6           #objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 70
    :cond_6
    :try_start_2
    iget-object v10, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 71
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 66
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 94
    :cond_7
    const/4 v9, 0x0

    move v2, v9

    goto :goto_2

    .line 116
    .restart local v0       #count:I
    .restart local v2       #hasWindow:Z
    .restart local v3       #i:I
    .restart local v4       #isWindow:Z
    .restart local v5       #objectArray:[Ljava/lang/Object;
    .restart local v6       #objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    :cond_8
    :try_start_4
    aget-object v1, v5, v3

    check-cast v1, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;

    .line 117
    .local v1, element:Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
    iget-boolean v8, v1, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->useWindow:Z

    .line 119
    .local v8, useWindow:Z
    if-eqz v2, :cond_9

    if-nez v8, :cond_9

    if-eqz v4, :cond_9

    .line 120
    invoke-static {p1}, Lcom/stickycoding/rokon/Window;->setDefault(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 121
    const/16 v9, 0x1700

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 122
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 123
    const/4 v4, 0x0

    .line 126
    :cond_9
    if-eqz v2, :cond_a

    if-eqz v8, :cond_a

    if-nez v4, :cond_a

    .line 127
    iget-object v9, v7, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v9, p1}, Lcom/stickycoding/rokon/Window;->onUpdate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 128
    const/16 v9, 0x1700

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 129
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 130
    const/4 v4, 0x1

    .line 134
    :cond_a
    iget-object v9, v1, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->drawable:Lcom/stickycoding/rokon/Drawable;

    invoke-interface {v9, p1}, Lcom/stickycoding/rokon/Drawable;->onDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 142
    .end local v0           #count:I
    .end local v1           #element:Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
    .end local v2           #hasWindow:Z
    .end local v3           #i:I
    .end local v4           #isWindow:Z
    .end local v5           #objectArray:[Ljava/lang/Object;
    .end local v6           #objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    .end local v8           #useWindow:Z
    :cond_b
    const/16 v9, 0x4000

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceChanged() w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 154
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 155
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 156
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 157
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gluOrtho2D : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 159
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    sget v1, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {p1, v2, v0, v1, v2}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 160
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .parameter "gl"
    .parameter "config"

    .prologue
    const/16 v7, 0x2300

    const/16 v6, 0x2200

    const/16 v5, 0x2100

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    const-string v2, "onSurfaceCreated()"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->reset()V

    .line 169
    invoke-static {p1}, Lcom/stickycoding/rokon/GLHelper;->setGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 171
    const/high16 v2, 0x3f80

    invoke-interface {p1, v3, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 173
    const/16 v2, 0xc50

    const/16 v3, 0x1101

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 175
    const/16 v2, 0x1d00

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 176
    const/16 v2, 0xb71

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 177
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 178
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 179
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 180
    const/16 v2, 0xbd0

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 181
    const/16 v2, 0xb50

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 183
    invoke-interface {p1, v7, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 185
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 187
    invoke-interface {p1, v7, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 189
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 191
    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, extensions:Ljava/lang/String;
    const/16 v2, 0x1f02

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, version:Ljava/lang/String;
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "vertex_buffer_object"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/stickycoding/rokon/device/Graphics;->setSupportsVBO(Z)V

    .line 196
    sget v2, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    if-nez v2, :cond_0

    .line 197
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->isSupportsVBO()Z

    move-result v2

    if-nez v2, :cond_2

    .line 198
    const-string v2, "Device does not support VBO\'s, defaulting back to normal"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    .line 199
    sput v4, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    .line 205
    :cond_0
    :goto_1
    invoke-static {}, Lcom/stickycoding/rokon/device/OS;->hackBrokenDevices()V

    .line 207
    invoke-static {p1}, Lcom/stickycoding/rokon/TextureManager;->reloadActiveTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 210
    return-void

    :cond_1
    move v2, v4

    .line 193
    goto :goto_0

    .line 201
    :cond_2
    const-string v2, "## Device supports VBOs"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSurfaceLost()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "onSurfaceLost"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->reset()V

    .line 216
    invoke-static {}, Lcom/stickycoding/rokon/TextureManager;->removeTextures()V

    .line 217
    invoke-static {}, Lcom/stickycoding/rokon/VBOManager;->removeVBOs()V

    .line 218
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stickycoding/rokon/Scene;->useNewClearColor:Z

    .line 221
    :cond_0
    return-void
.end method

.method public declared-synchronized setDrawQueue(Lcom/stickycoding/rokon/ObjectManager;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueue:Lcom/stickycoding/rokon/ObjectManager;

    .line 32
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawQueueChanged:Z

    .line 34
    iget-object v1, p0, Lcom/stickycoding/rokon/RokonRenderer;->drawLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 32
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

    .line 31
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
