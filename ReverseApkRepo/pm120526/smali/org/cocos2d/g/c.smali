.class public Lorg/cocos2d/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/af;


# static fields
.field private static C:Lorg/cocos2d/g/c;

.field public static a:Landroid/app/Activity;

.field public static d:Ljavax/microedition/khronos/opengles/GL10;

.field static final synthetic e:Z

.field private static final f:Ljava/lang/String;


# instance fields
.field private A:D

.field private B:Z

.field private D:D

.field private E:Lorg/cocos2d/m/b/b;

.field private F:Z

.field b:I

.field c:Lorg/cocos2d/g/g;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Z

.field private n:Lorg/cocos2d/e/d;

.field private o:Lorg/cocos2d/e/d;

.field private p:Z

.field private q:Ljava/util/ArrayList;

.field private r:J

.field private s:F

.field private t:Z

.field private u:Lorg/cocos2d/opengl/GLSurfaceView;

.field private v:Lorg/cocos2d/l/g;

.field private w:Lorg/cocos2d/l/g;

.field private x:F

.field private y:Z

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/c;->e:Z

    const-class v0, Lorg/cocos2d/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/g/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    new-instance v0, Lorg/cocos2d/g/c;

    invoke-direct {v0}, Lorg/cocos2d/g/c;-><init>()V

    sput-object v0, Lorg/cocos2d/g/c;->C:Lorg/cocos2d/g/c;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/cocos2d/g/c;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/g/c;->D:D

    new-instance v0, Lorg/cocos2d/m/b/b;

    invoke-direct {v0}, Lorg/cocos2d/m/b/b;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    iput-boolean v3, p0, Lorg/cocos2d/g/c;->F:Z

    sget-object v0, Lorg/cocos2d/g/c;->f:Ljava/lang/String;

    const-string v1, "cocos2d: cocos2d v0.99.4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/cocos2d/g/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cocos2d: Using Director Type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lorg/cocos2d/g/c;->i:I

    iput v3, p0, Lorg/cocos2d/g/c;->h:I

    iput-object v4, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    iput-object v4, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    const-wide v0, 0x3f91111111111111L

    iput-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    iput-wide v0, p0, Lorg/cocos2d/g/c;->A:D

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/g/c;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/g/c;->b:I

    iput-boolean v3, p0, Lorg/cocos2d/g/c;->B:Z

    iput v3, p0, Lorg/cocos2d/g/c;->j:I

    iput-boolean v3, p0, Lorg/cocos2d/g/c;->m:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/g/c;->x:F

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iput-boolean v3, p0, Lorg/cocos2d/g/c;->y:Z

    return-void
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static e()Lorg/cocos2d/g/c;
    .locals 1

    sget-object v0, Lorg/cocos2d/g/c;->C:Lorg/cocos2d/g/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/c;->g:I

    return v0
.end method

.method public final a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 4

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/g/c;->b:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    :goto_1
    iget v1, p0, Lorg/cocos2d/g/c;->x:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/g/c;->y:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/cocos2d/g/c;->x:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lorg/cocos2d/g/c;->z:D

    return-void
.end method

.method public final a(FFLorg/cocos2d/l/e;)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float v0, p1, v0

    iget-object v1, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    iget-object v2, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    div-float v2, p2, v2

    iget-object v3, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/g/c;->b:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget v0, p0, Lorg/cocos2d/g/c;->x:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/c;->y:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2d/g/c;->x:F

    invoke-static {p3, v0}, Lorg/cocos2d/l/a/a;->a(Lorg/cocos2d/l/e;F)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p3, v0, v1}, Lorg/cocos2d/l/e;->b(FF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p3, v0, v1}, Lorg/cocos2d/l/e;->b(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 12

    const/16 v2, 0x1701

    const/16 v9, 0x1700

    const/high16 v8, 0x4000

    const/4 v1, 0x0

    iget-object v7, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lorg/cocos2d/g/c;->f:Ljava/lang/String;

    const-string v1, "cocos2d: Director: unrecognized projecgtion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    iput p1, p0, Lorg/cocos2d/g/c;->g:I

    return-void

    :pswitch_1
    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, v7, Lorg/cocos2d/l/g;->a:F

    iget v4, v7, Lorg/cocos2d/l/g;->b:F

    const/high16 v5, -0x3b86

    const/high16 v6, 0x447a

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v2, 0x4270

    iget v3, v7, Lorg/cocos2d/l/g;->a:F

    iget v4, v7, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f00

    const v5, 0x44bb8000

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    sget-object v2, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    iget v0, v7, Lorg/cocos2d/l/g;->a:F

    div-float v3, v0, v8

    iget v0, v7, Lorg/cocos2d/l/g;->b:F

    div-float v4, v0, v8

    invoke-virtual {p0}, Lorg/cocos2d/g/c;->c()F

    move-result v5

    iget v0, v7, Lorg/cocos2d/l/g;->a:F

    div-float v6, v0, v8

    iget v0, v7, Lorg/cocos2d/l/g;->b:F

    div-float v7, v0, v8

    const/high16 v10, 0x3f80

    move v8, v1

    move v9, v1

    move v11, v1

    invoke-static/range {v2 .. v11}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v2, 0x0

    sput-object p1, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    sget-boolean v0, Lorg/cocos2d/g/c;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "openGLView_ must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/high16 v0, 0x3f80

    invoke-interface {p1, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    iget-object v0, p0, Lorg/cocos2d/g/c;->c:Lorg/cocos2d/g/g;

    if-nez v0, :cond_1

    const-string v0, "00.0"

    const-string v1, "fps_images.png"

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x2e

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/c;->c:Lorg/cocos2d/g/g;

    iget-object v0, p0, Lorg/cocos2d/g/c;->c:Lorg/cocos2d/g/g;

    const/high16 v1, 0x4248

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/g;->d(FF)V

    :cond_1
    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/n;->a(J)V

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/n;->b()V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 v3, 0x0

    sput-object p1, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/g;->b(FF)V

    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget v0, p0, Lorg/cocos2d/g/c;->g:I

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/c;->a(I)V

    return-void
.end method

.method public final a(Lorg/cocos2d/e/d;)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/c;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/c;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "You can\'t run a CCScene if another CCScene is running. Use replaceCCScene or pushCCScene instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    sget-boolean v0, Lorg/cocos2d/g/c;->e:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/c;->p:Z

    iget-object v0, p0, Lorg/cocos2d/g/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/g/c;->B:Z

    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v2, v1, v0}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget-object v0, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-virtual {v1, v0}, Lorg/cocos2d/l/g;->a(Lorg/cocos2d/l/g;)V

    iget-object v0, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget-object v1, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    invoke-virtual {v0, v1}, Lorg/cocos2d/l/g;->a(Lorg/cocos2d/l/g;)V

    iget-object v0, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    if-eq v0, p1, :cond_0

    check-cast p1, Lorg/cocos2d/opengl/GLSurfaceView;

    iput-object p1, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    iget-object v0, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/GLSurfaceView;->setRenderer(Lorg/cocos2d/opengl/af;)V

    :cond_0
    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/c/d;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lorg/cocos2d/g/c;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/cocos2d/g/c;->b:I

    iget v0, p0, Lorg/cocos2d/g/c;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/cocos2d/g/c;->f:Ljava/lang/String;

    const-string v1, "Director: Unknown device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Z)V

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/c/d;->d()V

    invoke-static {}, Lorg/cocos2d/c/a;->a()Lorg/cocos2d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/c/a;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/cocos2d/g/c;->t:Z

    if-eqz v2, :cond_6

    iput v4, p0, Lorg/cocos2d/g/c;->s:F

    iput-boolean v5, p0, Lorg/cocos2d/g/c;->t:Z

    :goto_0
    iput-wide v0, p0, Lorg/cocos2d/g/c;->r:J

    iget-boolean v0, p0, Lorg/cocos2d/g/c;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/g/c;->s:F

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/e;->a(F)V

    :cond_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/n;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    instance-of v0, v0, Lorg/cocos2d/k/aa;

    iget-object v1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    instance-of v1, v1, Lorg/cocos2d/k/aa;

    iget-object v2, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v1}, Lorg/cocos2d/e/d;->g()V

    iget-boolean v1, p0, Lorg/cocos2d/g/c;->p:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v1}, Lorg/cocos2d/e/d;->F()V

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    iput-object v1, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->a_()V

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->G()V

    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v0, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v1, v0, Lorg/cocos2d/l/g;->b:F

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, p0, Lorg/cocos2d/g/c;->b:I

    invoke-static {p1}, Lorg/cocos2d/b/a;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v0, p1}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_3
    iget-boolean v0, p0, Lorg/cocos2d/g/c;->B:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/cocos2d/g/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/g/c;->j:I

    iget v0, p0, Lorg/cocos2d/g/c;->k:F

    iget v1, p0, Lorg/cocos2d/g/c;->s:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/g/c;->k:F

    iget v0, p0, Lorg/cocos2d/g/c;->k:F

    const v1, 0x3dcccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lorg/cocos2d/g/c;->j:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/g/c;->k:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/g/c;->l:F

    iput v5, p0, Lorg/cocos2d/g/c;->j:I

    iput v4, p0, Lorg/cocos2d/g/c;->k:F

    iget v0, p0, Lorg/cocos2d/g/c;->l:F

    float-to-int v0, v0

    iget v1, p0, Lorg/cocos2d/g/c;->l:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    invoke-virtual {v2}, Lorg/cocos2d/m/b/b;->a()V

    iget-object v2, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    invoke-virtual {v2, v0}, Lorg/cocos2d/m/b/b;->a(I)Lorg/cocos2d/m/b/b;

    iget-object v0, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lorg/cocos2d/m/b/b;->a(C)Lorg/cocos2d/m/b/b;

    iget-object v0, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, v1}, Lorg/cocos2d/m/b/b;->a(I)Lorg/cocos2d/m/b/b;

    iget-object v0, p0, Lorg/cocos2d/g/c;->c:Lorg/cocos2d/g/g;

    iget-object v1, p0, Lorg/cocos2d/g/c;->E:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lorg/cocos2d/g/c;->c:Lorg/cocos2d/g/g;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/g;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_5
    invoke-static {p1}, Lorg/cocos2d/b/a;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/cocos2d/opengl/n;->a(Z)V

    iget-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    iget v2, p0, Lorg/cocos2d/g/c;->s:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    iget v2, p0, Lorg/cocos2d/g/c;->s:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/g/c;->D:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/g/c;->D:D

    iget-wide v0, p0, Lorg/cocos2d/g/c;->D:D

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :goto_1
    return-void

    :cond_6
    iget-wide v2, p0, Lorg/cocos2d/g/c;->r:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3a83126f

    mul-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/g/c;->s:F

    iget v2, p0, Lorg/cocos2d/g/c;->s:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lorg/cocos2d/g/c;->s:F

    goto/16 :goto_0

    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/g/c;->D:D

    goto :goto_1
.end method

.method public final b(Lorg/cocos2d/e/d;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lorg/cocos2d/g/c;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-boolean v2, p0, Lorg/cocos2d/g/c;->p:Z

    iget-object v1, p0, Lorg/cocos2d/g/c;->q:Ljava/util/ArrayList;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/c;->b(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/c;->b(I)V

    goto :goto_0
.end method

.method public final c()F
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const v1, 0x3f940b78

    div-float/2addr v0, v1

    return v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    return-wide v0
.end method

.method public final f()Lorg/cocos2d/l/g;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/c;->v:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lorg/cocos2d/l/g;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/c;->w:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/g/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->g()V

    iget-object v0, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/e/d;->F()V

    iput-object v1, p0, Lorg/cocos2d/g/c;->n:Lorg/cocos2d/e/d;

    :cond_0
    iput-object v1, p0, Lorg/cocos2d/g/c;->o:Lorg/cocos2d/e/d;

    iget-object v0, p0, Lorg/cocos2d/g/c;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/c/d;->c()V

    invoke-static {}, Lorg/cocos2d/g/q;->a()V

    invoke-static {}, Lorg/cocos2d/g/s;->b()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->a()V

    invoke-virtual {p0}, Lorg/cocos2d/g/c;->l()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/c;->u:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->b()V

    invoke-virtual {p0}, Lorg/cocos2d/g/c;->m()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/g/c;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    iput-wide v0, p0, Lorg/cocos2d/g/c;->A:D

    const-wide/high16 v0, 0x3fd0

    iput-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/c;->m:Z

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/g/c;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/cocos2d/g/c;->A:D

    iput-wide v0, p0, Lorg/cocos2d/g/c;->z:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2d/g/c;->r:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/c;->m:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/g/c;->s:F

    goto :goto_0
.end method
