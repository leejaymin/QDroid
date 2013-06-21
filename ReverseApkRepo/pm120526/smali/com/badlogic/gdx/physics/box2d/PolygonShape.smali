.class public Lcom/badlogic/gdx/physics/box2d/PolygonShape;
.super Lcom/badlogic/gdx/physics/box2d/o;


# static fields
.field private static a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->a:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/o;-><init>()V

    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->newPolygonShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->b:J

    return-void
.end method

.method private native jniSetAsBox(JFF)V
.end method

.method private native newPolygonShape()J
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/high16 v2, 0x3f00

    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->b:J

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFF)V

    return-void
.end method
