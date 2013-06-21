.class public Lcom/superdroid/sqd/data/IdType;
.super Ljava/lang/Object;
.source "IdType.java"


# instance fields
.field public id:I

.field public isSms:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "args1"
    .parameter "args2"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/superdroid/sqd/data/IdType;->id:I

    .line 32
    iput-boolean p2, p0, Lcom/superdroid/sqd/data/IdType;->isSms:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 27
    :goto_0
    return v2

    .line 18
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/superdroid/sqd/data/IdType;

    move-object v1, v0

    .line 23
    .local v1, other:Lcom/superdroid/sqd/data/IdType;
    iget v2, p0, Lcom/superdroid/sqd/data/IdType;->id:I

    iget v3, v1, Lcom/superdroid/sqd/data/IdType;->id:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-boolean v2, p0, Lcom/superdroid/sqd/data/IdType;->isSms:Z

    iget-boolean v3, v1, Lcom/superdroid/sqd/data/IdType;->isSms:Z

    if-eq v2, v3, :cond_4

    move v2, v4

    .line 26
    goto :goto_0

    :cond_4
    move v2, v5

    .line 27
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 8
    const/16 v0, 0x1f

    .line 9
    .local v0, prime:I
    const/4 v1, 0x1

    .line 10
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget v2, p0, Lcom/superdroid/sqd/data/IdType;->id:I

    add-int/lit8 v1, v2, 0x1f

    .line 11
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/superdroid/sqd/data/IdType;->isSms:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x4cf

    :goto_0
    add-int v1, v2, v3

    .line 12
    return v1

    .line 11
    :cond_0
    const/16 v3, 0x4d5

    goto :goto_0
.end method
