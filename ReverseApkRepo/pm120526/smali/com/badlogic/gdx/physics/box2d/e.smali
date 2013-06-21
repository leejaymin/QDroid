.class public final Lcom/badlogic/gdx/physics/box2d/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/badlogic/gdx/physics/box2d/World;

.field b:J

.field c:[F

.field final d:[F

.field final e:[F


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/e;->c:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/e;->d:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/e;->e:[F

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/e;->a:Lcom/badlogic/gdx/physics/box2d/World;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/e;->b:J

    return-void
.end method
