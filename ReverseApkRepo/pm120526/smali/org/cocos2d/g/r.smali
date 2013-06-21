.class public Lorg/cocos2d/g/r;
.super Lorg/cocos2d/g/i;


# static fields
.field static final synthetic G:Z


# instance fields
.field E:Lorg/cocos2d/l/i;

.field F:Ljava/util/ArrayList;

.field protected q:Lorg/cocos2d/opengl/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/r;->G:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/g/r;-><init>(Lorg/cocos2d/opengl/i;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/opengl/i;I)V
    .locals 3

    const/16 v2, 0x303

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Lorg/cocos2d/l/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    new-instance v0, Lorg/cocos2d/opengl/m;

    invoke-direct {v0, p1, p2}, Lorg/cocos2d/opengl/m;-><init>(Lorg/cocos2d/opengl/i;I)V

    iput-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->b:I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/r;->C:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/cocos2d/g/r;
    .locals 2

    new-instance v0, Lorg/cocos2d/g/r;

    const/16 v1, 0x96

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/g/r;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    const-string v1, "CCSpriteSheet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resizing TextureAtlas capacity from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/m;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/m;->b(I)V

    return-void
.end method

.method private static b(Lorg/cocos2d/g/o;)I
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/cocos2d/g/o;->z()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget v0, v0, Lorg/cocos2d/g/o;->n:I

    :goto_1
    return v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget v0, v0, Lorg/cocos2d/g/o;->n:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/o;

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/o;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->w()Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->w()Lorg/cocos2d/g/i;

    move-result-object v2

    if-ne v2, p0, :cond_0

    move v2, v5

    :goto_0
    const/4 v3, 0x0

    if-lez v1, :cond_8

    sub-int v3, v1, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/o;

    move-object v0, p0

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    move v0, v4

    :goto_2
    return v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/cocos2d/g/r;->b(Lorg/cocos2d/g/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->w()Lorg/cocos2d/g/i;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/o;

    if-gez p2, :cond_3

    iget v0, p0, Lorg/cocos2d/g/o;->n:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/cocos2d/g/o;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/cocos2d/g/o;->y()I

    move-result v1

    if-gez v1, :cond_5

    if-ltz p2, :cond_6

    :cond_5
    invoke-virtual {v0}, Lorg/cocos2d/g/o;->y()I

    move-result v1

    if-ltz v1, :cond_7

    if-ltz p2, :cond_7

    :cond_6
    invoke-static {v0}, Lorg/cocos2d/g/r;->b(Lorg/cocos2d/g/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lorg/cocos2d/g/o;->w()Lorg/cocos2d/g/i;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/o;

    iget v0, p0, Lorg/cocos2d/g/o;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method public a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    move-object v0, p1

    check-cast v0, Lorg/cocos2d/g/o;

    move-object v1, v0

    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/g/r;->b(Lorg/cocos2d/g/o;I)V

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->h()V

    return-object p1
.end method

.method protected final a(Lorg/cocos2d/g/o;II)Lorg/cocos2d/g/r;
    .locals 3

    sget-boolean v0, Lorg/cocos2d/g/r;->G:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/r;->G:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCSpriteSheet only supports CCSprites as children"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iput p2, p1, Lorg/cocos2d/g/o;->n:I

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    return-object p0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    iget v0, v0, Lorg/cocos2d/g/o;->n:I

    if-ge v0, p2, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const/16 v6, 0x303

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v5

    :goto_1
    if-lt v2, v1, :cond_3

    iget-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    if-eq v0, v6, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/g/r;->E:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v4

    :goto_2
    iget-object v1, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v0, :cond_0

    invoke-interface {p1, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    iget-boolean v3, v0, Lorg/cocos2d/g/o;->q:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->K()V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2
.end method

.method public a(Lorg/cocos2d/g/i;Z)V
    .locals 0

    check-cast p1, Lorg/cocos2d/g/o;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;)V

    invoke-super {p0, p1, p2}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/g/o;)V
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    iget v1, p1, Lorg/cocos2d/g/o;->n:I

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/m;->a(I)V

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->e()V

    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/g/o;->z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    iget v3, v0, Lorg/cocos2d/g/o;->n:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/g/o;->n:I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;)V

    goto :goto_1
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/g/r;->z:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0, p1}, Lorg/cocos2d/d/c;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/r;->d(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/g/r;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/r;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/r;->y:Lorg/cocos2d/d/c;

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/d/c;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/g/i;)V

    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method protected final b(Lorg/cocos2d/g/o;I)V
    .locals 3

    invoke-virtual {p1, p0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;)V

    iput p2, p1, Lorg/cocos2d/g/o;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/cocos2d/g/o;->q:Z

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->b()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/m;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/g/r;->a()V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->c()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->d()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V

    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/g/o;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/cocos2d/g/o;->n:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->y()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/o;I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/g/r;->b(Lorg/cocos2d/g/o;I)V

    goto :goto_1
.end method

.method public final c()Lorg/cocos2d/opengl/m;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    return-object v0
.end method

.method protected final c(Lorg/cocos2d/g/o;I)V
    .locals 3

    sget-boolean v0, Lorg/cocos2d/g/r;->G:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/g/r;->G:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCSpriteSheet only supports CCSprites as children"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/cocos2d/g/r;->a()V

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->c()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->c()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/m;->b()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;)V

    iput p2, p1, Lorg/cocos2d/g/o;->n:I

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->c()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->d()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v2, v0, v1, p2}, Lorg/cocos2d/opengl/m;->a(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1}, Lorg/cocos2d/g/o;->K()V

    return-void
.end method

.method public final d()Lorg/cocos2d/opengl/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/g/r;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->d(Z)V

    iget-object v0, p0, Lorg/cocos2d/g/r;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/cocos2d/g/r;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->e()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->e()V

    goto :goto_0
.end method
