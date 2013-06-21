.class final Lorg/cocos2d/tests/aw;
.super Lorg/cocos2d/e/b;


# static fields
.field protected static final a:F

.field static c:F

.field static d:F

.field private static f:F


# instance fields
.field protected final b:Lcom/badlogic/gdx/physics/box2d/World;

.field e:Lcom/badlogic/gdx/a/b;

.field private g:Lorg/cocos2d/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->d()D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/cocos2d/tests/aw;->a:F

    sput v2, Lorg/cocos2d/tests/aw;->f:F

    sput v2, Lorg/cocos2d/tests/aw;->c:F

    sput v2, Lorg/cocos2d/tests/aw;->d:F

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x4200

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    new-instance v0, Lorg/cocos2d/tests/ax;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ax;-><init>(Lorg/cocos2d/tests/aw;)V

    iput-object v0, p0, Lorg/cocos2d/tests/aw;->g:Lorg/cocos2d/a/i;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/tests/aw;->e:Lcom/badlogic/gdx/a/b;

    invoke-virtual {p0, v12}, Lorg/cocos2d/tests/aw;->a(Z)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/aw;->c()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/a/b;

    const v2, 0x411ccccd

    const v3, -0x3ee33333

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v10

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v10

    new-instance v4, Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {v4, v1}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/a/b;)V

    iput-object v4, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/World;->a()V

    new-instance v1, Lcom/badlogic/gdx/physics/box2d/a;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/a;-><init>()V

    iget-object v4, v1, Lcom/badlogic/gdx/physics/box2d/a;->b:Lcom/badlogic/gdx/a/b;

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/a/b;->a(FF)Lcom/badlogic/gdx/a/b;

    iget-object v4, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/physics/box2d/World;->a(Lcom/badlogic/gdx/physics/box2d/a;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    new-instance v4, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    invoke-direct {v4}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/a/b;

    invoke-direct {v5, v8, v8}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    new-instance v6, Lcom/badlogic/gdx/a/b;

    invoke-direct {v6, v8, v3}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    new-instance v7, Lcom/badlogic/gdx/a/b;

    invoke-direct {v7, v2, v3}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    new-instance v3, Lcom/badlogic/gdx/a/b;

    invoke-direct {v3, v2, v8}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->a(Lcom/badlogic/gdx/a/b;Lcom/badlogic/gdx/a/b;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Lcom/badlogic/gdx/physics/box2d/o;)Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->a(Lcom/badlogic/gdx/a/b;Lcom/badlogic/gdx/a/b;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Lcom/badlogic/gdx/physics/box2d/o;)Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->a(Lcom/badlogic/gdx/a/b;Lcom/badlogic/gdx/a/b;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Lcom/badlogic/gdx/physics/box2d/o;)Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->a(Lcom/badlogic/gdx/a/b;Lcom/badlogic/gdx/a/b;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Lcom/badlogic/gdx/physics/box2d/o;)Lcom/badlogic/gdx/physics/box2d/h;

    const-string v1, "blocks.png"

    invoke-static {v1}, Lorg/cocos2d/g/r;->a(Ljava/lang/String;)Lorg/cocos2d/g/r;

    move-result-object v1

    invoke-virtual {p0, v1, v11, v12}, Lorg/cocos2d/tests/aw;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v9

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v9

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2d/tests/aw;->a(Lorg/cocos2d/l/e;)V

    const-string v1, "Tap screen"

    const-string v2, "DroidSans"

    invoke-static {v1, v2, v10}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v3, 0x4248

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    new-instance v0, Lorg/cocos2d/l/j;

    const/16 v2, 0xff

    invoke-direct {v0, v11, v11, v2}, Lorg/cocos2d/l/j;-><init>(III)V

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/l/j;)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/aw;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void
.end method

.method private a(Lorg/cocos2d/l/e;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/high16 v6, 0x3fe0

    const/4 v4, 0x1

    const/high16 v5, 0x4200

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/aw;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/r;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-lez v1, :cond_0

    move v1, v8

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    move v2, v8

    :goto_1
    mul-int/lit8 v1, v1, 0x20

    int-to-float v1, v1

    mul-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-static {v1, v2, v5, v5}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/r;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v1, p1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/a;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/a;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/b;->c:Lcom/badlogic/gdx/physics/box2d/b;

    iput-object v2, v0, Lcom/badlogic/gdx/physics/box2d/a;->a:Lcom/badlogic/gdx/physics/box2d/b;

    iget-object v2, v0, Lcom/badlogic/gdx/physics/box2d/a;->b:Lcom/badlogic/gdx/a/b;

    iget v3, p1, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v5

    iget v4, p1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/a/b;->a(FF)Lcom/badlogic/gdx/a/b;

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->a()V

    iget-object v3, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/physics/box2d/World;->a(Lcom/badlogic/gdx/physics/box2d/a;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/badlogic/gdx/physics/box2d/i;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/i;-><init>()V

    iput-object v2, v1, Lcom/badlogic/gdx/physics/box2d/i;->a:Lcom/badlogic/gdx/physics/box2d/o;

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/badlogic/gdx/physics/box2d/i;->d:F

    const v2, 0x3e99999a

    iput v2, v1, Lcom/badlogic/gdx/physics/box2d/i;->b:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->a(Lcom/badlogic/gdx/physics/box2d/i;)Lcom/badlogic/gdx/physics/box2d/h;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(F)V
    .locals 6

    const/high16 v5, 0x4200

    monitor-enter p0

    :try_start_0
    sget v0, Lorg/cocos2d/tests/aw;->f:F

    add-float/2addr v0, p1

    sput v0, Lorg/cocos2d/tests/aw;->f:F

    sget v1, Lorg/cocos2d/tests/aw;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    sget v2, Lorg/cocos2d/tests/aw;->a:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->a(F)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    sput v0, Lorg/cocos2d/tests/aw;->f:F

    iget-object v0, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/World;->b()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v3, v1, Lorg/cocos2d/g/o;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->a()Lcom/badlogic/gdx/a/b;

    move-result-object v3

    iget v4, v3, Lcom/badlogic/gdx/a/b;->e:F

    mul-float/2addr v4, v5

    iget v3, v3, Lcom/badlogic/gdx/a/b;->f:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Lorg/cocos2d/g/o;->d(FF)V

    const/high16 v3, -0x4080

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->b()F

    move-result v0

    const v4, 0x40490fdb

    div-float/2addr v0, v4

    const/high16 v4, 0x4334

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->b(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(FF)V
    .locals 4

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    mul-float v0, p1, v2

    sget v1, Lorg/cocos2d/tests/aw;->c:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float v1, p2, v2

    sget v2, Lorg/cocos2d/tests/aw;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v0, Lorg/cocos2d/tests/aw;->c:F

    sput v1, Lorg/cocos2d/tests/aw;->d:F

    iget-object v2, p0, Lorg/cocos2d/tests/aw;->e:Lcom/badlogic/gdx/a/b;

    const v3, 0x411ccccd

    mul-float/2addr v1, v3

    const v3, -0x3ee33333

    mul-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/a/b;->a(FF)Lcom/badlogic/gdx/a/b;

    iget-object v0, p0, Lorg/cocos2d/tests/aw;->b:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/cocos2d/tests/aw;->e:Lcom/badlogic/gdx/a/b;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->a(Lcom/badlogic/gdx/a/b;)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/tests/aw;->a(Lorg/cocos2d/l/e;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final a_()V
    .locals 1

    invoke-super {p0}, Lorg/cocos2d/e/b;->a_()V

    iget-object v0, p0, Lorg/cocos2d/tests/aw;->g:Lorg/cocos2d/a/i;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/aw;->a(Lorg/cocos2d/a/i;)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/e/b;->g()V

    iget-object v0, p0, Lorg/cocos2d/tests/aw;->g:Lorg/cocos2d/a/i;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lorg/cocos2d/a/e;->a(Lorg/cocos2d/a/i;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
