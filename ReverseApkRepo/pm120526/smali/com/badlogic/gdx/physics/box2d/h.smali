.class public final Lcom/badlogic/gdx/physics/box2d/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Lcom/badlogic/gdx/physics/box2d/o;

.field protected c:Ljava/lang/Object;

.field private d:Lcom/badlogic/gdx/physics/box2d/Body;

.field private final e:[S

.field private final f:Lcom/badlogic/gdx/physics/box2d/g;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->e:[S

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/g;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/g;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->f:Lcom/badlogic/gdx/physics/box2d/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->d:Lcom/badlogic/gdx/physics/box2d/Body;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->a:J

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/h;->d:Lcom/badlogic/gdx/physics/box2d/Body;

    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/h;->a:J

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->b:Lcom/badlogic/gdx/physics/box2d/o;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/h;->c:Ljava/lang/Object;

    return-void
.end method
