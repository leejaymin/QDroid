.class public Lcom/badlogic/gdx/physics/box2d/Body;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Ljava/util/ArrayList;

.field public final c:Lcom/badlogic/gdx/a/b;

.field public final d:Lcom/badlogic/gdx/a/b;

.field public final e:Lcom/badlogic/gdx/a/b;

.field public final f:Lcom/badlogic/gdx/a/b;

.field private final g:[F

.field private final h:Lcom/badlogic/gdx/physics/box2d/World;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;

.field private final k:Lcom/badlogic/gdx/physics/box2d/p;

.field private final l:Lcom/badlogic/gdx/a/b;

.field private final m:Lcom/badlogic/gdx/a/b;

.field private final n:Lcom/badlogic/gdx/a/b;

.field private final o:Lcom/badlogic/gdx/a/b;

.field private final p:Lcom/badlogic/gdx/physics/box2d/l;

.field private final q:Lcom/badlogic/gdx/a/b;

.field private final r:Lcom/badlogic/gdx/a/b;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->g:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/p;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/p;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->k:Lcom/badlogic/gdx/physics/box2d/p;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->l:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->m:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->n:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->o:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/l;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/l;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->p:Lcom/badlogic/gdx/physics/box2d/l;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->q:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->r:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->c:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->d:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->e:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->f:Lcom/badlogic/gdx/a/b;

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    return-void
.end method

.method private native jniCreateFixture(JJF)J
.end method

.method private native jniCreateFixture(JJFFFZSSS)J
.end method

.method private native jniGetAngle(J)F
.end method

.method private native jniGetPosition(J[F)V
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/a/b;
    .locals 3

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->g:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetPosition(J[F)V

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->l:Lcom/badlogic/gdx/a/b;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->g:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/a/b;->e:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->l:Lcom/badlogic/gdx/a/b;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->g:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/a/b;->f:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->l:Lcom/badlogic/gdx/a/b;

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/physics/box2d/i;)Lcom/badlogic/gdx/physics/box2d/h;
    .locals 12

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/i;->a:Lcom/badlogic/gdx/physics/box2d/o;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/o;->b:J

    iget v5, p1, Lcom/badlogic/gdx/physics/box2d/i;->b:F

    iget v6, p1, Lcom/badlogic/gdx/physics/box2d/i;->c:F

    iget v7, p1, Lcom/badlogic/gdx/physics/box2d/i;->d:F

    iget-boolean v8, p1, Lcom/badlogic/gdx/physics/box2d/i;->e:Z

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/i;->f:Lcom/badlogic/gdx/physics/box2d/g;

    iget-short v9, v0, Lcom/badlogic/gdx/physics/box2d/g;->a:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/i;->f:Lcom/badlogic/gdx/physics/box2d/g;

    iget-short v10, v0, Lcom/badlogic/gdx/physics/box2d/g;->b:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/i;->f:Lcom/badlogic/gdx/physics/box2d/g;

    iget-short v11, v0, Lcom/badlogic/gdx/physics/box2d/g;->c:S

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJFFFZSSS)J

    move-result-wide v1

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->b:Lcom/badlogic/gdx/utils/g;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/h;->a(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->d:Lcom/badlogic/gdx/utils/d;

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/h;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/physics/box2d/o;)Lcom/badlogic/gdx/physics/box2d/h;
    .locals 6

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/o;->b:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJF)J

    move-result-wide v1

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->b:Lcom/badlogic/gdx/utils/g;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/h;->a(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->d:Lcom/badlogic/gdx/utils/d;

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/h;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->h:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->b:Lcom/badlogic/gdx/utils/g;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/h;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/g;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->j:Ljava/lang/Object;

    return-void
.end method

.method public final b()F
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngle(J)F

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->j:Ljava/lang/Object;

    return-object v0
.end method
