.class public final Lcom/badlogic/gdx/physics/box2d/j;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field final b:[Lcom/badlogic/gdx/physics/box2d/k;

.field final c:Lcom/badlogic/gdx/a/b;

.field final d:Lcom/badlogic/gdx/a/b;

.field final e:[I

.field final f:[F


# direct methods
.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Lcom/badlogic/gdx/physics/box2d/k;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/k;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/physics/box2d/k;-><init>(Lcom/badlogic/gdx/physics/box2d/j;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/k;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/physics/box2d/k;-><init>(Lcom/badlogic/gdx/physics/box2d/j;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->b:[Lcom/badlogic/gdx/physics/box2d/k;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->c:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->d:Lcom/badlogic/gdx/a/b;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->e:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->f:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/j;->a:J

    return-void
.end method
