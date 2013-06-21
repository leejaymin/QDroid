.class public final Lcom/mosaicture/zoom/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final a:Lcom/mosaicture/zoom/p;

.field private b:Lcom/mosaicture/zoom/a;

.field private final c:Lcom/mosaicture/g/t;

.field private final d:Lcom/mosaicture/g/t;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mosaicture/zoom/p;

    invoke-direct {v0}, Lcom/mosaicture/zoom/p;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    new-instance v0, Lcom/mosaicture/g/t;

    invoke-direct {v0}, Lcom/mosaicture/g/t;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    new-instance v0, Lcom/mosaicture/g/t;

    invoke-direct {v0}, Lcom/mosaicture/g/t;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/c;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mosaicture/zoom/d;

    invoke-direct {v0, p0}, Lcom/mosaicture/zoom/d;-><init>(Lcom/mosaicture/zoom/c;)V

    iput-object v0, p0, Lcom/mosaicture/zoom/c;->j:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->d()V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->d()V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->e()V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->e()V

    return-void
.end method

.method private static a(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    sub-float v2, p0, v2

    div-float/2addr v2, p0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    return-object v0
.end method

.method static synthetic b(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    return-object v0
.end method

.method static synthetic c(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/zoom/p;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/high16 v2, 0x4180

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->c()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->e(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->c()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, v2}, Lcom/mosaicture/zoom/p;->e(F)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/mosaicture/zoom/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/high16 v3, 0x3f00

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v1, v0}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2, v0}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v0

    invoke-static {v1}, Lcom/mosaicture/zoom/c;->a(F)F

    move-result v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/mosaicture/zoom/c;->e:F

    invoke-static {v1}, Lcom/mosaicture/zoom/c;->a(F)F

    move-result v1

    add-float/2addr v1, v3

    iput v1, p0, Lcom/mosaicture/zoom/c;->f:F

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->a(F)F

    move-result v1

    sub-float v1, v3, v1

    iput v1, p0, Lcom/mosaicture/zoom/c;->g:F

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->a(F)F

    move-result v0

    add-float/2addr v0, v3

    iput v0, p0, Lcom/mosaicture/zoom/c;->h:F

    return-void
.end method

.method static synthetic e(Lcom/mosaicture/zoom/c;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->j:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/mosaicture/zoom/p;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    return-object v0
.end method

.method public final a(FF)V
    .locals 6

    const v5, 0x3ecccccd

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->a()F

    move-result v1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v0

    div-float v0, p1, v0

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2, v1}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v1

    div-float v1, p2, v1

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->a()F

    move-result v2

    iget v3, p0, Lcom/mosaicture/zoom/c;->f:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v2, v0, v4

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->a()F

    move-result v2

    iget v3, p0, Lcom/mosaicture/zoom/c;->e:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_2

    :cond_1
    mul-float/2addr v0, v5

    :cond_2
    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->b()F

    move-result v2

    iget v3, p0, Lcom/mosaicture/zoom/c;->h:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    cmpl-float v2, v1, v4

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->b()F

    move-result v2

    iget v3, p0, Lcom/mosaicture/zoom/c;->g:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    :cond_4
    mul-float/2addr v1, v5

    :cond_5
    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->a()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/p;->b()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2, v0}, Lcom/mosaicture/zoom/p;->c(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, v1}, Lcom/mosaicture/zoom/p;->d(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->notifyObservers()V

    return-void
.end method

.method public final a(FFF)V
    .locals 9

    const/high16 v8, 0x3f00

    const/high16 v7, 0x3f80

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v1, v0}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v2, v0}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v2

    iget-object v3, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    iget-object v4, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v4}, Lcom/mosaicture/zoom/p;->c()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/mosaicture/zoom/p;->e(F)V

    invoke-direct {p0}, Lcom/mosaicture/zoom/c;->c()V

    iget-object v3, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v3, v0}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v3

    iget-object v4, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v4, v0}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v0

    iget-object v4, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    iget-object v5, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v5}, Lcom/mosaicture/zoom/p;->a()F

    move-result v5

    sub-float v6, p2, v8

    div-float v1, v7, v1

    div-float v3, v7, v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/mosaicture/zoom/p;->c(F)V

    iget-object v1, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    iget-object v3, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v3}, Lcom/mosaicture/zoom/p;->b()F

    move-result v3

    sub-float v4, p3, v8

    div-float v2, v7, v2

    div-float v0, v7, v0

    sub-float v0, v2, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/mosaicture/zoom/p;->d(F)V

    invoke-direct {p0}, Lcom/mosaicture/zoom/c;->d()V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->notifyObservers()V

    return-void
.end method

.method public final a(Lcom/mosaicture/zoom/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0, p0}, Lcom/mosaicture/zoom/a;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0, p0}, Lcom/mosaicture/zoom/a;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mosaicture/zoom/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(FF)V
    .locals 6

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->b:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->a()F

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    iget-object v4, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v4}, Lcom/mosaicture/zoom/p;->a()F

    move-result v4

    iget-object v5, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v5, v0}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v5

    div-float v5, p1, v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/mosaicture/g/t;->a(FFJ)V

    iget-object v3, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    iget-object v4, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v4}, Lcom/mosaicture/zoom/p;->b()F

    move-result v4

    iget-object v5, p0, Lcom/mosaicture/zoom/c;->a:Lcom/mosaicture/zoom/p;

    invoke-virtual {v5, v0}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v0

    div-float v0, p2, v0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/mosaicture/g/t;->a(FFJ)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    iget v1, p0, Lcom/mosaicture/zoom/c;->e:F

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/t;->b(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->c:Lcom/mosaicture/g/t;

    iget v1, p0, Lcom/mosaicture/zoom/c;->f:F

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/t;->a(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    iget v1, p0, Lcom/mosaicture/zoom/c;->g:F

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/t;->b(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->d:Lcom/mosaicture/g/t;

    iget v1, p0, Lcom/mosaicture/zoom/c;->h:F

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/t;->a(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mosaicture/zoom/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/zoom/c;->c()V

    invoke-direct {p0}, Lcom/mosaicture/zoom/c;->d()V

    return-void
.end method
