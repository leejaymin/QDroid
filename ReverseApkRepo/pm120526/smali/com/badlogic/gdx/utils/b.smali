.class public final Lcom/badlogic/gdx/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field private final b:Lcom/badlogic/gdx/utils/a;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/b;->b:Lcom/badlogic/gdx/utils/a;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/b;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/b;->b:Lcom/badlogic/gdx/utils/a;

    iget v1, v1, Lcom/badlogic/gdx/utils/a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/b;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/b;->b:Lcom/badlogic/gdx/utils/a;

    iget v1, v1, Lcom/badlogic/gdx/utils/a;->b:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/b;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/b;->b:Lcom/badlogic/gdx/utils/a;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/b;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/b;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/b;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/b;->b:Lcom/badlogic/gdx/utils/a;

    iget v1, p0, Lcom/badlogic/gdx/utils/b;->a:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/a;->a(I)Ljava/lang/Object;

    return-void
.end method
