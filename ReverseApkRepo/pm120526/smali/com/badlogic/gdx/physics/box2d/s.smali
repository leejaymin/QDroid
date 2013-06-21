.class public final Lcom/badlogic/gdx/physics/box2d/s;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/badlogic/gdx/a/b;

.field protected final b:[Lcom/badlogic/gdx/a/b;


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/s;->a:Lcom/badlogic/gdx/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/a/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/a/b;

    invoke-direct {v2}, Lcom/badlogic/gdx/a/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/a/b;

    invoke-direct {v2}, Lcom/badlogic/gdx/a/b;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/s;->b:[Lcom/badlogic/gdx/a/b;

    return-void
.end method
