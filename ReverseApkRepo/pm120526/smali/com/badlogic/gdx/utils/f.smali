.class public final Lcom/badlogic/gdx/utils/f;
.super Lcom/badlogic/gdx/utils/e;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/e;-><init>(Lcom/badlogic/gdx/utils/d;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/e;->a()V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/f;->a:Z

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/f;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/f;->b:Lcom/badlogic/gdx/utils/d;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->f:Ljava/lang/Object;

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/f;->c:I

    iput v1, p0, Lcom/badlogic/gdx/utils/f;->d:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/f;->b()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/f;->b:Lcom/badlogic/gdx/utils/d;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/f;->c:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/e;->remove()V

    return-void
.end method
