.class public Lcom/superdroid/util/SuperAssert;
.super Ljava/lang/Object;
.source "SuperAssert.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_0
    return-void
.end method

.method public static varargs assertNotEmpty([Ljava/lang/String;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 25
    return-void

    .line 22
    :cond_0
    aget-object v0, p0, v2

    .line 23
    .local v0, param:Ljava/lang/String;
    invoke-static {v0}, Lcom/superdroid/util/SuperAssert;->assertNotEmpty(Ljava/lang/String;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 19
    :cond_0
    return-void
.end method

.method public static varargs assertNotNull([Ljava/lang/Object;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 10
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 13
    return-void

    .line 10
    :cond_0
    aget-object v0, p0, v2

    .line 11
    .local v0, param:Ljava/lang/Object;
    invoke-static {v0}, Lcom/superdroid/util/SuperAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
