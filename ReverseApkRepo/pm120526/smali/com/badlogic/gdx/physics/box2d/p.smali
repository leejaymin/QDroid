.class public final Lcom/badlogic/gdx/physics/box2d/p;
.super Ljava/lang/Object;


# instance fields
.field public a:[F

.field private b:Lcom/badlogic/gdx/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/p;->a:[F

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/p;->b:Lcom/badlogic/gdx/a/b;

    return-void
.end method
