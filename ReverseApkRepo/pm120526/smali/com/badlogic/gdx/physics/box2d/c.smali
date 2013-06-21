.class public final Lcom/badlogic/gdx/physics/box2d/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Lcom/badlogic/gdx/physics/box2d/World;

.field protected final c:Lcom/badlogic/gdx/physics/box2d/s;

.field private final d:[F


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/s;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/s;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/c;->c:Lcom/badlogic/gdx/physics/box2d/s;

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/c;->d:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/c;->a:J

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/c;->b:Lcom/badlogic/gdx/physics/box2d/World;

    return-void
.end method
