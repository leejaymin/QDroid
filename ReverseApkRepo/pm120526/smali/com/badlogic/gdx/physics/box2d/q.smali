.class final Lcom/badlogic/gdx/physics/box2d/q;
.super Lcom/badlogic/gdx/utils/g;


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/q;->a:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/q;->a:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    return-object v0
.end method
