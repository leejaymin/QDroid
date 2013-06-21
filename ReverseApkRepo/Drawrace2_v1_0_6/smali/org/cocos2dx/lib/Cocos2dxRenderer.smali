.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMINISECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static animationInterval:J


# instance fields
.field private last:J

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->animationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 122
    const-wide v0, 0x41cdcd6500000000L

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->animationInterval:J

    .line 123
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    .line 101
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    .line 91
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 105
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    .line 106
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 95
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    .line 96
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 143
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 144
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 139
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 110
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    .line 111
    return-void
.end method

.method public handleOnPause()V
    .locals 0

    .prologue
    .line 114
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 115
    return-void
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 118
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 119
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 71
    .local v2, now:J
    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->last:J

    sub-long v0, v2, v4

    .line 75
    .local v0, interval:J
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    .line 78
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->animationInterval:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 81
    :try_start_0
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->animationInterval:J

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->last:J

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 67
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 49
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->init()V

    .line 50
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Audio;->init()V

    .line 52
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenHeight:I

    invoke-static {v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->setScreenSize(II)V

    .line 54
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenHeight:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->last:J

    .line 56
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 59
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenWidth:I

    .line 60
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->screenHeight:I

    .line 61
    return-void
.end method
