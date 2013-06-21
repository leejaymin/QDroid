.class public final Lcom/badlogic/gdx/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z

.field private d:Lcom/badlogic/gdx/utils/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/a;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/a;->c:Z

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/a;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/a;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/a;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/a;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/a;->c:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/a;->b:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    return-object v1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    aget-object v2, v0, v2

    aput-object v2, v0, p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/a;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/a;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/a;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->d:Lcom/badlogic/gdx/utils/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/b;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/b;-><init>(Lcom/badlogic/gdx/utils/a;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/a;->d:Lcom/badlogic/gdx/utils/b;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->d:Lcom/badlogic/gdx/utils/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/b;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->d:Lcom/badlogic/gdx/utils/b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/a;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/a;->a:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/a;->b:I

    if-lt v2, v3, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
