.class public final Lcom/badlogic/gdx/physics/box2d/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/badlogic/gdx/physics/box2d/o;

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public final f:Lcom/badlogic/gdx/physics/box2d/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/i;->b:F

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/i;->c:F

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/i;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/i;->e:Z

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/g;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/g;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/i;->f:Lcom/badlogic/gdx/physics/box2d/g;

    return-void
.end method
