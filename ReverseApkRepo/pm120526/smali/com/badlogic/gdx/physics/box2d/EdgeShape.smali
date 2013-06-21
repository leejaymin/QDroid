.class public Lcom/badlogic/gdx/physics/box2d/EdgeShape;
.super Lcom/badlogic/gdx/physics/box2d/o;


# static fields
.field static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->a:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/o;-><init>()V

    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->newEdgeShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->b:J

    return-void
.end method

.method private native jniSet(JFFFF)V
.end method

.method private native newEdgeShape()J
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/a/b;Lcom/badlogic/gdx/a/b;)V
    .locals 7

    iget v3, p1, Lcom/badlogic/gdx/a/b;->e:F

    iget v4, p1, Lcom/badlogic/gdx/a/b;->f:F

    iget v5, p2, Lcom/badlogic/gdx/a/b;->e:F

    iget v6, p2, Lcom/badlogic/gdx/a/b;->f:F

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSet(JFFFF)V

    return-void
.end method
