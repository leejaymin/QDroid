.class Lcom/badlogic/gdx/utils/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field final b:Lcom/badlogic/gdx/utils/d;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/e;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/e;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/e;->c:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/d;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/e;->a:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/e;->b()V

    goto :goto_0
.end method

.method final b()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/e;->a:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget v1, v1, Lcom/badlogic/gdx/utils/d;->d:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget v2, v2, Lcom/badlogic/gdx/utils/d;->e:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/e;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/e;->c:I

    if-lt v2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/e;->c:I

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/e;->a:Z

    goto :goto_0
.end method

.method public remove()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/badlogic/gdx/utils/e;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/d;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iput-object v6, v0, Lcom/badlogic/gdx/utils/d;->f:Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/d;->g:Z

    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/e;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget v1, v0, Lcom/badlogic/gdx/utils/d;->a:I

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/badlogic/gdx/utils/d;->a:I

    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/e;->d:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/e;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget v1, v1, Lcom/badlogic/gdx/utils/d;->d:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget v1, p0, Lcom/badlogic/gdx/utils/e;->d:I

    iget v2, v0, Lcom/badlogic/gdx/utils/d;->e:I

    sub-int/2addr v2, v7

    iput v2, v0, Lcom/badlogic/gdx/utils/d;->e:I

    iget v2, v0, Lcom/badlogic/gdx/utils/d;->d:I

    iget v3, v0, Lcom/badlogic/gdx/utils/d;->e:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    iget-object v3, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    iget-object v4, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    aget-wide v4, v4, v2

    aput-wide v4, v3, v1

    iget-object v3, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object v6, v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object v6, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/e;->d:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/e;->b:Lcom/badlogic/gdx/utils/d;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/e;->d:I

    aput-object v6, v0, v1

    goto :goto_0
.end method
