.class public Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;
.super Lorg/cocos2d/opengl/GLSurfaceView;


# instance fields
.field public a:Lorg/cocos2d/l/g;

.field private b:Lorg/cocos2d/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/app/Activity;

    sput-object p1, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->b:Lorg/cocos2d/c/d;

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setId(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Landroid/app/Activity;

    sput-object p1, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->b:Lorg/cocos2d/c/d;

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setId(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lorg/cocos2d/opengl/GLSurfaceView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p5, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->a:Lorg/cocos2d/l/g;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->b:Lorg/cocos2d/c/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/c/d;->a(Landroid/view/MotionEvent;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
