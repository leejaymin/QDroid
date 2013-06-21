.class public final Lcom/badlogic/gdx/physics/box2d/World;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/badlogic/gdx/utils/g;

.field protected final b:Lcom/badlogic/gdx/utils/g;

.field protected final c:Lcom/badlogic/gdx/utils/d;

.field protected final d:Lcom/badlogic/gdx/utils/d;

.field protected final e:Lcom/badlogic/gdx/utils/d;

.field protected f:Lcom/badlogic/gdx/physics/box2d/d;

.field protected g:Lcom/badlogic/gdx/physics/box2d/f;

.field final h:[F

.field final i:Lcom/badlogic/gdx/a/b;

.field private final j:J

.field private k:Lcom/badlogic/gdx/physics/box2d/m;

.field private l:[J

.field private final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/ArrayList;

.field private final o:Lcom/badlogic/gdx/physics/box2d/c;

.field private final p:Lcom/badlogic/gdx/physics/box2d/j;

.field private final q:Lcom/badlogic/gdx/physics/box2d/e;

.field private r:Lcom/badlogic/gdx/physics/box2d/n;

.field private s:Lcom/badlogic/gdx/a/b;

.field private t:Lcom/badlogic/gdx/a/b;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/a/b;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/q;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/q;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->a:Lcom/badlogic/gdx/utils/g;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/r;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/r;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->b:Lcom/badlogic/gdx/utils/g;

    new-instance v0, Lcom/badlogic/gdx/utils/d;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/d;-><init>(B)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->c:Lcom/badlogic/gdx/utils/d;

    new-instance v0, Lcom/badlogic/gdx/utils/d;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/d;-><init>(B)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->d:Lcom/badlogic/gdx/utils/d;

    new-instance v0, Lcom/badlogic/gdx/utils/d;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/d;-><init>(B)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->e:Lcom/badlogic/gdx/utils/d;

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->f:Lcom/badlogic/gdx/physics/box2d/d;

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->g:Lcom/badlogic/gdx/physics/box2d/f;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->h:[F

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->i:Lcom/badlogic/gdx/a/b;

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->k:Lcom/badlogic/gdx/physics/box2d/m;

    const/16 v0, 0xc8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->l:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/c;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/c;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->o:Lcom/badlogic/gdx/physics/box2d/c;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/j;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/j;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->p:Lcom/badlogic/gdx/physics/box2d/j;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/e;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/physics/box2d/e;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->q:Lcom/badlogic/gdx/physics/box2d/e;

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->r:Lcom/badlogic/gdx/physics/box2d/n;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->s:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->t:Lcom/badlogic/gdx/a/b;

    iget v0, p1, Lcom/badlogic/gdx/a/b;->e:F

    iget v1, p1, Lcom/badlogic/gdx/a/b;->f:F

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->newWorld(FFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->j:J

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->l:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->l:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->l:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->n:Ljava/util/ArrayList;

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/c;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/physics/box2d/c;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native jniCreateBody(JIFFFFFFFFZZZZZF)J
.end method

.method private native jniSetContiousPhysics(JZ)V
.end method

.method private native jniSetGravity(JFF)V
.end method

.method private native jniStep(JFII)V
.end method

.method private native newWorld(FFZ)J
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/physics/box2d/a;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->j:J

    move-wide v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->a:Lcom/badlogic/gdx/physics/box2d/b;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/b;->a()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->b:Lcom/badlogic/gdx/a/b;

    move-object v4, v0

    iget v8, v4, Lcom/badlogic/gdx/a/b;->e:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->b:Lcom/badlogic/gdx/a/b;

    move-object v4, v0

    iget v9, v4, Lcom/badlogic/gdx/a/b;->f:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->c:F

    move v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->d:Lcom/badlogic/gdx/a/b;

    move-object v4, v0

    iget v11, v4, Lcom/badlogic/gdx/a/b;->e:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->d:Lcom/badlogic/gdx/a/b;

    move-object v4, v0

    iget v12, v4, Lcom/badlogic/gdx/a/b;->f:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->e:F

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->f:F

    move v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->g:F

    move v15, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->h:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->j:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->k:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->l:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/a;->m:F

    move/from16 v21, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v21}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateBody(JIFFFFFFFFZZZZZF)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->a:Lcom/badlogic/gdx/utils/g;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Body;

    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->a(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->c:Lcom/badlogic/gdx/utils/d;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->a:J

    move-wide v5, v0

    move-object v0, v4

    move-wide v1, v5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final a()V
    .locals 3

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->j:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetContiousPhysics(JZ)V

    return-void
.end method

.method public final a(F)V
    .locals 6

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->j:J

    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->jniStep(JFII)V

    return-void
.end method

.method public final a(Lcom/badlogic/gdx/a/b;)V
    .locals 4

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->j:J

    iget v2, p1, Lcom/badlogic/gdx/a/b;->e:F

    iget v3, p1, Lcom/badlogic/gdx/a/b;->f:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetGravity(JFF)V

    return-void
.end method

.method public final b()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->c:Lcom/badlogic/gdx/utils/d;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/d;->a()Lcom/badlogic/gdx/utils/f;

    move-result-object v0

    return-object v0
.end method
