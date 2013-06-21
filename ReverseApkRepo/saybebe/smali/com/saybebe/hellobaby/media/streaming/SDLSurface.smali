.class Lcom/saybebe/hellobaby/media/streaming/SDLSurface;
.super Landroid/view/SurfaceView;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SDLSurface"


# instance fields
.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mSDLThread:Ljava/lang/Thread;

.field private movieUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->init()V

    .line 937
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 941
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->init()V

    .line 946
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 949
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 950
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->init()V

    .line 955
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 959
    const-string v0, "SDLSurface"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 963
    invoke-virtual {p0, v2}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->setFocusable(Z)V

    .line 964
    invoke-virtual {p0, v2}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 965
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->requestFocus()Z

    .line 967
    return-void
.end method


# virtual methods
.method public flipEGL()V
    .locals 8

    .prologue
    .line 1161
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 1163
    .local v1, egl:Ljavax/microedition/khronos/egl/EGL10;
    const/16 v3, 0x305b

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    .line 1167
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    .line 1169
    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    .end local v1           #egl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_0
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SDLSurface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "flipEGL(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 1174
    .local v2, s:Ljava/lang/StackTraceElement;
    const-string v6, "SDLSurface"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getMovieUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->movieUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initEGL(II)Z
    .locals 24
    .parameter "majorVersion"
    .parameter "minorVersion"

    .prologue
    .line 1082
    const-string v7, "SDLSurface"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Starting up OpenGL ES "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    .line 1088
    .local v3, egl:Ljavax/microedition/khronos/egl/EGL10;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v7, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v20, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1090
    sget-object v21, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v22, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1089
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v3, v7, v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v3, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1092
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v3, v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1093
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1094
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1097
    :cond_0
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    .line 1099
    .local v4, dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v7, 0x2

    new-array v0, v7, [I

    move-object/from16 v19, v0

    .line 1100
    .local v19, version:[I
    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1102
    const/4 v11, 0x1

    .line 1103
    .local v11, EGL_OPENGL_ES_BIT:I
    const/4 v10, 0x4

    .line 1104
    .local v10, EGL_OPENGL_ES2_BIT:I
    const/16 v16, 0x0

    .line 1105
    .local v16, renderableType:I
    const/4 v7, 0x2

    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 1106
    move/from16 v16, v10

    .line 1110
    :cond_1
    :goto_0
    const/4 v7, 0x3

    new-array v5, v7, [I

    const/4 v7, 0x0

    .line 1112
    const/16 v20, 0x3040

    aput v20, v5, v7

    const/4 v7, 0x1

    aput v16, v5, v7

    const/4 v7, 0x2

    const/16 v20, 0x3038

    aput v20, v5, v7

    .line 1113
    .local v5, configSpec:[I
    const/4 v7, 0x1

    new-array v6, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1114
    .local v6, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v7, 0x1

    new-array v8, v7, [I

    .line 1115
    .local v8, num_config:[I
    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1116
    const/4 v7, 0x0

    aget v7, v8, v7

    if-nez v7, :cond_4

    .line 1117
    :cond_2
    const-string v7, "SDLSurface"

    const-string v20, "No EGL config available"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v7, 0x0

    .line 1155
    .end local v3           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v4           #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v5           #configSpec:[I
    .end local v6           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8           #num_config:[I
    .end local v10           #EGL_OPENGL_ES2_BIT:I
    .end local v11           #EGL_OPENGL_ES_BIT:I
    .end local v16           #renderableType:I
    .end local v19           #version:[I
    :goto_1
    return v7

    .line 1107
    .restart local v3       #egl:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v4       #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v10       #EGL_OPENGL_ES2_BIT:I
    .restart local v11       #EGL_OPENGL_ES_BIT:I
    .restart local v16       #renderableType:I
    .restart local v19       #version:[I
    :cond_3
    const/4 v7, 0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_1

    .line 1108
    move/from16 v16, v11

    goto :goto_0

    .line 1120
    .restart local v5       #configSpec:[I
    .restart local v6       #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v8       #num_config:[I
    :cond_4
    const/4 v7, 0x0

    aget-object v12, v6, v7

    .line 1122
    .local v12, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v9, 0x3098

    .line 1123
    .local v9, EGL_CONTEXT_CLIENT_VERSION:I
    const/4 v7, 0x3

    new-array v13, v7, [I

    const/4 v7, 0x0

    aput v9, v13, v7

    const/4 v7, 0x1

    .line 1124
    aput p1, v13, v7

    const/4 v7, 0x2

    const/16 v20, 0x3038

    aput v20, v13, v7

    .line 1126
    .local v13, contextAttrs:[I
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1125
    invoke-interface {v3, v4, v12, v7, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v14

    .line 1127
    .local v14, ctx:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v14, v7, :cond_5

    .line 1128
    const-string v7, "SDLSurface"

    const-string v20, "Couldn\'t create context"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v7, 0x0

    goto :goto_1

    .line 1133
    :cond_5
    const/4 v7, 0x0

    .line 1132
    move-object/from16 v0, p0

    invoke-interface {v3, v4, v12, v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v18

    .line 1134
    .local v18, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, v18

    if-ne v0, v7, :cond_6

    .line 1135
    const-string v7, "SDLSurface"

    const-string v20, "Couldn\'t create surface"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v7, 0x0

    goto :goto_1

    .line 1139
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-interface {v3, v4, v0, v1, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1140
    const-string v7, "SDLSurface"

    const-string v20, "Couldn\'t make context current"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v7, 0x0

    goto :goto_1

    .line 1144
    :cond_7
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1145
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1146
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .end local v3           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v4           #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v5           #configSpec:[I
    .end local v6           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8           #num_config:[I
    .end local v9           #EGL_CONTEXT_CLIENT_VERSION:I
    .end local v10           #EGL_OPENGL_ES2_BIT:I
    .end local v11           #EGL_OPENGL_ES_BIT:I
    .end local v12           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v13           #contextAttrs:[I
    .end local v14           #ctx:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v16           #renderableType:I
    .end local v18           #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    .end local v19           #version:[I
    :cond_8
    const/4 v7, 0x1

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v15

    .line 1149
    .local v15, e:Ljava/lang/Exception;
    const-string v7, "SDLSurface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {v15}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v7, v0, :cond_8

    aget-object v17, v20, v7

    .line 1151
    .local v17, s:Ljava/lang/StackTraceElement;
    const-string v22, "SDLSurface"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1078
    return-void
.end method

.method public setMovieUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 921
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->movieUrl:Ljava/lang/String;

    .line 922
    return-void
.end method

.method public startSDLMain()V
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/saybebe/hellobaby/media/streaming/SDLMain;

    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->movieUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/saybebe/hellobaby/media/streaming/SDLMain;-><init>(Ljava/lang/String;)V

    const-string v2, "SDLThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    .line 1058
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1060
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 993
    const-string v1, "SDLSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surfaceChanged() width : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 994
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const v0, -0x7aeaeffe

    .line 997
    .local v0, sdlFormat:I
    packed-switch p2, :pswitch_data_0

    .line 1037
    :pswitch_0
    const-string v1, "SDLSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pixel format unknown "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_0
    invoke-static {p3, p4, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->onNativeResize(III)V

    .line 1043
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->startSDLMain()V

    .line 1044
    return-void

    .line 999
    :pswitch_1
    const-string v1, "SDLSurface"

    const-string v2, "pixel format A_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1002
    :pswitch_2
    const-string v1, "SDLSurface"

    const-string v2, "pixel format LA_88"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :pswitch_3
    const-string v1, "SDLSurface"

    const-string v2, "pixel format L_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1008
    :pswitch_4
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGBA_4444"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const v0, -0x7abdeffe

    .line 1010
    goto :goto_0

    .line 1012
    :pswitch_5
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGBA_5551"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const v0, -0x7abbeffe

    .line 1014
    goto :goto_0

    .line 1016
    :pswitch_6
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGBA_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const v0, -0x79b9dffc

    .line 1018
    goto :goto_0

    .line 1020
    :pswitch_7
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGBX_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const v0, -0x79d9dffc

    .line 1022
    goto :goto_0

    .line 1024
    :pswitch_8
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGB_332"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const v0, -0x7beef7ff

    .line 1026
    goto :goto_0

    .line 1028
    :pswitch_9
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGB_565"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const v0, -0x7aeaeffe

    .line 1030
    goto :goto_0

    .line 1032
    :pswitch_a
    const-string v1, "SDLSurface"

    const-string v2, "pixel format RGB_888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const v0, -0x79e9e7fc

    .line 1035
    goto :goto_0

    .line 997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 971
    const-string v0, "SDLSurface"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 979
    const-string v0, "SDLSurface"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeQuit()V

    .line 985
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->waitSDLMainToFinish()V

    .line 988
    return-void
.end method

.method public waitSDLMainToFinish()V
    .locals 4

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->mSDLThread:Ljava/lang/Thread;

    .line 1072
    const-string v1, "SDLSurface"

    const-string v2, "SDLMain finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SDLSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem stopping thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
