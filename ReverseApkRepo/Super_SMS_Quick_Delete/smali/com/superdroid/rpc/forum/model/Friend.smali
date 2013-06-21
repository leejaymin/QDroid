.class public Lcom/superdroid/rpc/forum/model/Friend;
.super Ljava/lang/Object;
.source "Friend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xf641a2968fd5573L


# instance fields
.field public iconLink:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 49
    :goto_0
    return v2

    .line 29
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/superdroid/rpc/forum/model/Friend;

    move-object v1, v0

    .line 34
    .local v1, other:Lcom/superdroid/rpc/forum/model/Friend;
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 35
    iget-object v2, v1, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    iget-object v3, v1, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 40
    iget-object v2, v1, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_5
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    iget-object v3, v1, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_6
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 45
    iget-object v2, v1, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_7
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    iget-object v3, v1, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    .line 48
    goto :goto_0

    :cond_8
    move v2, v5

    .line 49
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    const/16 v0, 0x1f

    .line 17
    .local v0, prime:I
    const/4 v1, 0x1

    .line 18
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    .line 19
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v4

    .line 18
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 20
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 21
    mul-int/lit8 v2, v1, 0x1f

    .line 22
    iget-object v3, p0, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    .line 21
    :goto_2
    add-int v1, v2, v3

    .line 23
    return v1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Friend;->iconLink:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 20
    :cond_1
    iget-object v3, p0, Lcom/superdroid/rpc/forum/model/Friend;->status:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 22
    :cond_2
    iget-object v3, p0, Lcom/superdroid/rpc/forum/model/Friend;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method
