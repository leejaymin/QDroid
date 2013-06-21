.class public final Lcom/badlogic/gdx/physics/box2d/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/badlogic/gdx/physics/box2d/b;

.field public final b:Lcom/badlogic/gdx/a/b;

.field public c:F

.field public final d:Lcom/badlogic/gdx/a/b;

.field public e:F

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/b;->a:Lcom/badlogic/gdx/physics/box2d/b;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/a;->a:Lcom/badlogic/gdx/physics/box2d/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/a;->b:Lcom/badlogic/gdx/a/b;

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/a;->c:F

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/a;->d:Lcom/badlogic/gdx/a/b;

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/a;->e:F

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/a;->f:F

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/a;->g:F

    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/a;->h:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/a;->i:Z

    iput-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/a;->j:Z

    iput-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/a;->k:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/a;->l:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/a;->m:F

    return-void
.end method
