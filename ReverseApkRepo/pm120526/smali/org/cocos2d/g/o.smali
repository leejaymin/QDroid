.class public Lorg/cocos2d/g/o;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Lorg/cocos2d/i/c;


# static fields
.field static final synthetic H:Z

.field private static final M:Lorg/cocos2d/l/k;

.field private static final N:[Lorg/cocos2d/l/k;

.field private static final O:Lorg/cocos2d/l/d;

.field private static final P:Lorg/cocos2d/l/d;

.field private static final Q:[F


# instance fields
.field E:Z

.field F:Z

.field G:Z

.field private I:Ljava/util/HashMap;

.field private J:Ljava/nio/FloatBuffer;

.field private K:Ljava/nio/FloatBuffer;

.field private L:Ljava/nio/FloatBuffer;

.field public a:Z

.field public b:Z

.field c:I

.field d:Lorg/cocos2d/l/j;

.field e:Lorg/cocos2d/l/j;

.field f:Z

.field g:Lorg/cocos2d/opengl/i;

.field protected h:Lorg/cocos2d/l/i;

.field i:Lorg/cocos2d/l/f;

.field j:Ljava/lang/Boolean;

.field k:Lorg/cocos2d/l/e;

.field l:Lorg/cocos2d/l/e;

.field m:Lorg/cocos2d/opengl/m;

.field public n:I

.field o:Lorg/cocos2d/g/r;

.field p:I

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/o;->H:Z

    invoke-static {v2, v2, v2, v2}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/l/k;

    sget-object v1, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/g/o;->N:[Lorg/cocos2d/l/k;

    invoke-static {}, Lorg/cocos2d/l/d;->a()Lorg/cocos2d/l/d;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    invoke-static {}, Lorg/cocos2d/l/d;->a()Lorg/cocos2d/l/d;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2d/g/o;->Q:[F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/l/f;->a()Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-direct {p0}, Lorg/cocos2d/g/o;->M()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/l/f;->a()Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid filename for sprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v3, v3, v3, v3}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "CCSprite"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load texture from file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/cocos2d/l/f;)V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/l/f;->a()Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid filename for sprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;)V

    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/l/f;->a()Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/cocos2d/g/r;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;)V

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/opengl/i;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/l/f;->a()Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-static {v3, v3, v1, v0}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;)V

    return-void
.end method

.method private M()V
    .locals 8

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    iput-boolean v4, p0, Lorg/cocos2d/g/o;->q:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/o;->E:Z

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0}, Lorg/cocos2d/l/e;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/o;->l:Lorg/cocos2d/l/e;

    invoke-static {v1, v1, v3, v3}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    invoke-virtual {p0}, Lorg/cocos2d/g/o;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->f:Z

    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/g/o;->c:I

    new-instance v0, Lorg/cocos2d/l/j;

    sget-object v2, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    invoke-direct {v0, v2}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    new-instance v0, Lorg/cocos2d/l/j;

    sget-object v2, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    invoke-direct {v0, v2}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/g/o;->e:Lorg/cocos2d/l/j;

    invoke-virtual {p0, v6}, Lorg/cocos2d/g/o;->b(Lorg/cocos2d/opengl/i;)V

    iput-boolean v4, p0, Lorg/cocos2d/g/o;->b:Z

    iput-boolean v4, p0, Lorg/cocos2d/g/o;->a:Z

    iput-object v6, p0, Lorg/cocos2d/g/o;->I:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/cocos2d/g/o;->v:Lorg/cocos2d/l/e;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/l/e;->b(FF)V

    const/4 v0, 0x7

    iput v0, p0, Lorg/cocos2d/g/o;->p:I

    iput-boolean v4, p0, Lorg/cocos2d/g/o;->F:Z

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/g/o;->a(FFFFFFZ)V

    return-void
.end method

.method private N()V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->E:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->q:Z

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->F:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/g/o;->O()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->E:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->q:Z

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/g/o;

    invoke-direct {p0}, Lorg/cocos2d/g/o;->O()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/cocos2d/g/o;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/o;

    invoke-direct {v0, p0}, Lorg/cocos2d/g/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/o;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/g/o;-><init>(Ljava/lang/String;Lorg/cocos2d/l/f;)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/o;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/g/o;-><init>(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/g/o;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/o;

    invoke-direct {v0, p0}, Lorg/cocos2d/g/o;-><init>(Lorg/cocos2d/opengl/i;)V

    return-object v0
.end method

.method private a(FFFFFFZ)V
    .locals 8

    iget-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cocos2d/l/f;->b(FFFF)V

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-virtual {p0, p5, p6}, Lorg/cocos2d/g/o;->b(FF)V

    iget-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    if-eqz v3, :cond_9

    iget-object v1, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->b()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->c()I

    move-result v2

    int-to-float v2, v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    iget-object v3, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x4000

    iget-object v4, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    iget-object v4, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    mul-float/2addr v2, v5

    div-float v2, v4, v2

    add-float/2addr v2, v3

    const/high16 v4, 0x4000

    iget-object v5, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    iget-object v0, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v5, 0x4000

    mul-float/2addr v0, v5

    const/high16 v5, 0x4000

    sub-float/2addr v0, v5

    const/high16 v5, 0x4000

    mul-float/2addr v1, v5

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-boolean v1, p0, Lorg/cocos2d/g/o;->b:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_1
    iget-boolean v4, p0, Lorg/cocos2d/g/o;->a:Z

    if-eqz v4, :cond_7

    :goto_2
    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x1

    aput v0, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x2

    aput v2, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x4

    aput v3, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x5

    aput v1, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v2, 0x7

    aput v1, v0, v2

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    iget-object v1, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    :goto_3
    iget-object v0, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    iget-object v1, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/g/o;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;I)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/o;->l:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/g/o;->l:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    iget-boolean v2, p0, Lorg/cocos2d/g/o;->b:Z

    if-eqz v2, :cond_1

    neg-float v0, v0

    :cond_1
    iget-boolean v2, p0, Lorg/cocos2d/g/o;->a:Z

    if-eqz v2, :cond_2

    neg-float v1, v1

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget-object v3, p0, Lorg/cocos2d/g/o;->w:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    iget-object v4, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    iget-object v4, v4, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, v2, Lorg/cocos2d/l/e;->a:F

    iget-object v0, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/g/o;->w:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget-object v3, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    iget-object v3, v3, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/l/e;->b:F

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->q:Z

    :goto_4
    return-void

    :cond_3
    const/high16 v3, 0x4000

    iget-object v4, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    iget-object v4, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    mul-float/2addr v2, v5

    div-float v2, v4, v2

    add-float/2addr v2, v3

    const/high16 v4, 0x4000

    iget-object v5, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    iget-object v0, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v0, v5

    const/high16 v5, 0x4000

    sub-float/2addr v0, v5

    const/high16 v5, 0x4000

    mul-float/2addr v1, v5

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-boolean v1, p0, Lorg/cocos2d/g/o;->b:Z

    if-eqz v1, :cond_6

    move v1, v2

    move v2, v3

    :goto_5
    iget-boolean v3, p0, Lorg/cocos2d/g/o;->a:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_6
    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x0

    aput v1, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x1

    aput v0, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    sget-object v1, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x3

    aput v3, v1, v4

    sget-object v1, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x4

    aput v2, v1, v4

    sget-object v1, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x5

    aput v0, v1, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    iget-object v1, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v2

    add-float v2, v0, p3

    add-float v3, v1, p4

    iget-object v4, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x0

    aput v0, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x4

    aput v1, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x6

    aput v2, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x7

    aput v3, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput v4, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x9

    aput v2, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v2, 0xa

    aput v1, v0, v2

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    iget-object v1, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    iget-object v0, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    :cond_5
    move v3, v0

    move v0, v4

    goto/16 :goto_6

    :cond_6
    move v1, v3

    goto/16 :goto_5

    :cond_7
    move v7, v3

    move v3, v2

    move v2, v7

    goto/16 :goto_2

    :cond_8
    move v1, v0

    move v0, v4

    goto/16 :goto_1

    :cond_9
    move v7, v2

    move v2, v1

    move v1, v7

    goto/16 :goto_0
.end method

.method private a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/g;Ljava/lang/Boolean;)V
    .locals 8

    iget-object v0, p1, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v0, p1, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v2, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v0, p1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v3, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v0, p1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v4, v0, Lorg/cocos2d/l/g;->b:F

    iget v5, p2, Lorg/cocos2d/l/g;->a:F

    iget v6, p2, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/g/o;->a(FFFFFFZ)V

    return-void
.end method

.method private a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid texture for sprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/cocos2d/g/o;->M()V

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/o;->b(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {p0, p2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->a:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lorg/cocos2d/g/o;->a:Z

    iget-object v0, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    :cond_0
    return-void
.end method

.method public final I()Lorg/cocos2d/opengl/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    return-object v0
.end method

.method public final J()Lorg/cocos2d/g/p;
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    iget-object v1, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/cocos2d/g/p;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)Lorg/cocos2d/g/p;

    move-result-object v0

    return-object v0
.end method

.method public final K()V
    .locals 17

    sget-object v2, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    invoke-virtual {v2}, Lorg/cocos2d/l/d;->c()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/g/o;->z:Z

    move v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/cocos2d/opengl/m;->a()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/g/o;->Q:[F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->n:I

    move v4, v0

    invoke-static {v2, v3, v4}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;[FI)V

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/g/o;->E:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/g/o;->q:Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->A:Lorg/cocos2d/g/i;

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->A:Lorg/cocos2d/g/i;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    move-object v3, v0

    if-ne v2, v3, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->r:F

    move v2, v0

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    const v3, 0x40490fdb

    mul-float/2addr v2, v3

    neg-float v2, v2

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v9, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v7, v2

    sget-object v2, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->s:F

    move v3, v0

    mul-float/2addr v3, v9

    float-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->s:F

    move v5, v0

    mul-float/2addr v5, v7

    float-to-double v5, v5

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->t:F

    move v8, v0

    mul-float/2addr v7, v8

    float-to-double v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->t:F

    move v10, v0

    mul-float/2addr v9, v10

    float-to-double v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->x:Lorg/cocos2d/l/e;

    move-object v11, v0

    iget v11, v11, Lorg/cocos2d/l/e;->a:F

    float-to-double v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->x:Lorg/cocos2d/l/e;

    move-object v13, v0

    iget v13, v13, Lorg/cocos2d/l/e;->b:F

    float-to-double v13, v13

    invoke-virtual/range {v2 .. v14}, Lorg/cocos2d/l/d;->b(DDDDDD)V

    sget-object v2, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->u:Lorg/cocos2d/l/e;

    move-object v3, v0

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    neg-float v3, v3

    float-to-double v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->u:Lorg/cocos2d/l/e;

    move-object v5, v0

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    neg-float v5, v5

    float-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/cocos2d/l/d;->b(DD)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    move-object v2, v0

    iget-object v2, v2, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    move-object v3, v0

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    move-object v4, v0

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    iget v5, v2, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v5, v3

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v2, v4

    sget-object v6, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v6, v6, Lorg/cocos2d/l/d;->e:D

    double-to-float v6, v6

    sget-object v7, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v7, v7, Lorg/cocos2d/l/d;->f:D

    double-to-float v7, v7

    sget-object v8, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v8, v8, Lorg/cocos2d/l/d;->a:D

    double-to-float v8, v8

    sget-object v9, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v9, v9, Lorg/cocos2d/l/d;->b:D

    double-to-float v9, v9

    sget-object v10, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v10, v10, Lorg/cocos2d/l/d;->d:D

    double-to-float v10, v10

    sget-object v11, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    iget-wide v11, v11, Lorg/cocos2d/l/d;->c:D

    neg-double v11, v11

    double-to-float v11, v11

    mul-float v12, v3, v8

    mul-float v13, v4, v11

    sub-float/2addr v12, v13

    add-float/2addr v12, v6

    mul-float v13, v3, v9

    mul-float v14, v4, v10

    add-float/2addr v13, v14

    add-float/2addr v13, v7

    mul-float v14, v5, v8

    mul-float v15, v4, v11

    sub-float/2addr v14, v15

    add-float/2addr v14, v6

    mul-float v15, v5, v9

    mul-float/2addr v4, v10

    add-float/2addr v4, v15

    add-float/2addr v4, v7

    mul-float v15, v5, v8

    mul-float v16, v2, v11

    sub-float v15, v15, v16

    add-float/2addr v15, v6

    mul-float/2addr v5, v9

    mul-float v16, v2, v10

    add-float v5, v5, v16

    add-float/2addr v5, v7

    mul-float/2addr v8, v3

    mul-float/2addr v11, v2

    sub-float/2addr v8, v11

    add-float/2addr v6, v8

    mul-float/2addr v3, v9

    mul-float/2addr v2, v10

    add-float/2addr v2, v3

    add-float/2addr v2, v7

    sget-object v3, Lorg/cocos2d/g/o;->Q:[F

    const/4 v7, 0x0

    aput v6, v3, v7

    sget-object v3, Lorg/cocos2d/g/o;->Q:[F

    const/4 v6, 0x1

    aput v2, v3, v6

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->B:F

    move v6, v0

    aput v6, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x3

    aput v12, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x4

    aput v13, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->B:F

    move v6, v0

    aput v6, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x6

    aput v15, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->B:F

    move v5, v0

    aput v5, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x9

    aput v14, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0xa

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->B:F

    move v4, v0

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/cocos2d/opengl/m;->a()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/g/o;->Q:[F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/g/o;->n:I

    move v4, v0

    invoke-static {v2, v3, v4}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;[FI)V

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/g/o;->E:Z

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/g/o;->q:Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->A:Lorg/cocos2d/g/i;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    move-object v3, v0

    if-eq v2, v3, :cond_2

    const/4 v2, 0x7

    move-object/from16 v3, p0

    move v4, v2

    :goto_1
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    move-object v2, v0

    if-eq v3, v2, :cond_2

    move-object v0, v3

    check-cast v0, Lorg/cocos2d/g/o;

    move-object v2, v0

    sget-object v5, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    invoke-virtual {v5}, Lorg/cocos2d/l/d;->c()V

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_4

    sget-object v5, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    iget-object v6, v2, Lorg/cocos2d/g/o;->x:Lorg/cocos2d/l/e;

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    float-to-double v6, v6

    iget-object v8, v2, Lorg/cocos2d/g/o;->x:Lorg/cocos2d/l/e;

    iget v8, v8, Lorg/cocos2d/l/e;->b:F

    float-to-double v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/cocos2d/l/d;->b(DD)V

    :cond_4
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_5

    sget-object v5, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    iget v6, v2, Lorg/cocos2d/g/o;->r:F

    const/high16 v7, 0x4334

    div-float/2addr v6, v7

    const v7, 0x40490fdb

    mul-float/2addr v6, v7

    neg-float v6, v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/cocos2d/l/d;->a(D)V

    :cond_5
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    sget-object v4, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    iget v5, v2, Lorg/cocos2d/g/o;->s:F

    float-to-double v5, v5

    iget v7, v2, Lorg/cocos2d/g/o;->t:F

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/cocos2d/l/d;->c(DD)V

    :cond_6
    sget-object v4, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    iget-object v5, v2, Lorg/cocos2d/g/o;->u:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->a:F

    neg-float v5, v5

    float-to-double v5, v5

    iget-object v7, v2, Lorg/cocos2d/g/o;->u:Lorg/cocos2d/l/e;

    iget v7, v7, Lorg/cocos2d/l/e;->b:F

    neg-float v7, v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/cocos2d/l/d;->b(DD)V

    sget-object v4, Lorg/cocos2d/g/o;->O:Lorg/cocos2d/l/d;

    sget-object v5, Lorg/cocos2d/g/o;->P:Lorg/cocos2d/l/d;

    invoke-virtual {v4, v5}, Lorg/cocos2d/l/d;->d(Lorg/cocos2d/l/d;)V

    iget v2, v2, Lorg/cocos2d/g/o;->p:I

    invoke-virtual {v3}, Lorg/cocos2d/g/i;->w()Lorg/cocos2d/g/i;

    move-result-object v3

    move v4, v2

    goto :goto_1
.end method

.method public final L()Lorg/cocos2d/l/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    return-object v0
.end method

.method public final a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    instance-of v0, p1, Lorg/cocos2d/g/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    check-cast p1, Lorg/cocos2d/g/o;

    iget-object v0, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;I)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    invoke-virtual {v1, p1, v0}, Lorg/cocos2d/g/r;->b(Lorg/cocos2d/g/o;I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->F:Z

    return-object p0
.end method

.method public final a()Lorg/cocos2d/l/j;
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/cocos2d/l/j;

    iget-object v1, p0, Lorg/cocos2d/g/o;->e:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cocos2d/l/j;

    iget-object v1, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lorg/cocos2d/g/o;->c:I

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->e:Lorg/cocos2d/l/j;

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/g/o;->h()V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/16 v7, 0x303

    const/4 v6, 0x4

    const/16 v5, 0x1406

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If CCSprite is being rendered by CCSpriteSheet, CCSprite#draw SHOULD NOT be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    if-eq v0, v7, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v4

    :goto_0
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->d()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v5, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v5, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x5

    invoke-interface {p1, v1, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    if-eqz v0, :cond_2

    invoke-interface {p1, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/g/i;Z)V
    .locals 3

    iget-boolean v1, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/cocos2d/g/o;

    move-object v1, v0

    iget-object v2, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    iget-object v1, p0, Lorg/cocos2d/g/o;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/cocos2d/g/o;->F:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/g/p;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/g/o;->l:Lorg/cocos2d/l/e;

    iget-object v1, p1, Lorg/cocos2d/g/p;->b:Lorg/cocos2d/l/e;

    invoke-virtual {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    iget-object v0, p1, Lorg/cocos2d/g/p;->d:Lorg/cocos2d/opengl/i;

    iget-object v1, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->d()I

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->d()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/g/o;->b(Lorg/cocos2d/opengl/i;)V

    :cond_1
    iget-object v0, p1, Lorg/cocos2d/g/p;->a:Lorg/cocos2d/l/f;

    iget-object v1, p1, Lorg/cocos2d/g/p;->c:Lorg/cocos2d/l/g;

    iget-object v2, p1, Lorg/cocos2d/g/p;->e:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/g;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/g/r;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    invoke-virtual {p1}, Lorg/cocos2d/g/r;->c()Lorg/cocos2d/opengl/m;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    iput-object p1, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    return-void
.end method

.method public final a(Lorg/cocos2d/l/f;)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/o;->j:Ljava/lang/Boolean;

    iget-object v1, p1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-direct {p0, p1, v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/g;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    return-void
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    invoke-virtual {v0, p1}, Lorg/cocos2d/l/j;->a(Lorg/cocos2d/l/j;)V

    iget-object v0, p0, Lorg/cocos2d/g/o;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v0, p1}, Lorg/cocos2d/l/j;->a(Lorg/cocos2d/l/j;)V

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->j:I

    iget v2, p0, Lorg/cocos2d/g/o;->c:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->j:I

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->k:I

    iget v2, p0, Lorg/cocos2d/g/o;->c:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->k:I

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->l:I

    iget v2, p0, Lorg/cocos2d/g/o;->c:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->l:I

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/g/o;->h()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iput-boolean p1, p0, Lorg/cocos2d/g/o;->f:Z

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/o;->c:I

    return v0
.end method

.method public final b(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->b(F)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final b(Lorg/cocos2d/opengl/i;)V
    .locals 3

    const/16 v2, 0x303

    const/4 v1, 0x1

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCSprite: setTexture doesn\'t work when the sprite is rendered using a CCSpriteSheet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/cocos2d/opengl/i;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setTexture expects a CCTexture2D. Invalid argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCSprite: updateBlendFunc doesn\'t work when the sprite is rendered using a CCSpriteSheet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/o;->a(Z)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/g/o;->h:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->b:I

    invoke-virtual {p0, v1}, Lorg/cocos2d/g/o;->a(Z)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/o;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "relativeTransformAnchor is invalid in CCSprite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->b(Z)V

    return-void
.end method

.method public final b(Lorg/cocos2d/g/p;)Z
    .locals 3

    iget-object v0, p1, Lorg/cocos2d/g/p;->a:Lorg/cocos2d/l/f;

    iget-object v1, p1, Lorg/cocos2d/g/p;->b:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    invoke-static {v0, v2}, Lorg/cocos2d/l/f;->a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/cocos2d/g/p;->d:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->d()I

    move-result v0

    iget-object v2, p0, Lorg/cocos2d/g/o;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->d()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/nio/FloatBuffer;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->J:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final c(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->c(F)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->z:Z

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->E:Z

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->q:Z

    iget-object v0, p0, Lorg/cocos2d/g/o;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->c(Z)V

    goto :goto_0
.end method

.method public final d()Ljava/nio/FloatBuffer;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final d(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->d(F)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final d(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/cocos2d/g/i;->d(FF)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final d(Lorg/cocos2d/l/e;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->d(Lorg/cocos2d/l/e;)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/o;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->d(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->F:Z

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    iget-object v2, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/g/o;->n:I

    iput-boolean v7, p0, Lorg/cocos2d/g/o;->G:Z

    iput-object v1, p0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    iput-object v1, p0, Lorg/cocos2d/g/o;->o:Lorg/cocos2d/g/r;

    iput-boolean v7, p0, Lorg/cocos2d/g/o;->E:Z

    iput-boolean v7, p0, Lorg/cocos2d/g/o;->q:Z

    iget-object v0, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v0, v6

    iget-object v1, p0, Lorg/cocos2d/g/o;->k:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    iget-object v2, v2, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/cocos2d/g/o;->i:Lorg/cocos2d/l/f;

    iget-object v3, v3, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    aput v0, v4, v7

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x2

    aput v6, v4, v5

    sget-object v4, Lorg/cocos2d/g/o;->Q:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x4

    aput v1, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x5

    aput v6, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x6

    aput v2, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/4 v4, 0x7

    aput v3, v0, v4

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x8

    aput v6, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v3, 0x9

    aput v2, v0, v3

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v2, 0xa

    aput v1, v0, v2

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    const/16 v1, 0xb

    aput v6, v0, v1

    sget-object v0, Lorg/cocos2d/g/o;->Q:[F

    iget-object v1, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    iget-object v0, p0, Lorg/cocos2d/g/o;->K:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final e(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->e(F)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final e(Lorg/cocos2d/l/e;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final f(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->f(F)V

    invoke-direct {p0}, Lorg/cocos2d/g/o;->N()V

    return-void
.end method

.method public final h()V
    .locals 5

    const/high16 v4, 0x437f

    iget-object v0, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v0, v0, Lorg/cocos2d/l/j;->j:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lorg/cocos2d/g/o;->c:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/g/o;->L:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lorg/cocos2d/g/o;->G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2d/g/o;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    iget-object v1, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->j:I

    iput v1, v0, Lorg/cocos2d/l/k;->a:I

    sget-object v0, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    iget-object v1, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->k:I

    iput v1, v0, Lorg/cocos2d/l/k;->b:I

    sget-object v0, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    iget-object v1, p0, Lorg/cocos2d/g/o;->d:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->l:I

    iput v1, v0, Lorg/cocos2d/l/k;->c:I

    sget-object v0, Lorg/cocos2d/g/o;->M:Lorg/cocos2d/l/k;

    iget v1, p0, Lorg/cocos2d/g/o;->c:I

    iput v1, v0, Lorg/cocos2d/l/k;->d:I

    iget-object v0, p0, Lorg/cocos2d/g/o;->m:Lorg/cocos2d/opengl/m;

    sget-object v1, Lorg/cocos2d/g/o;->N:[Lorg/cocos2d/l/k;

    iget v2, p0, Lorg/cocos2d/g/o;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/m;->a([Lorg/cocos2d/l/k;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/o;->q:Z

    goto :goto_0
.end method
