.class public final Lcom/google/devtools/simple/runtime/helpers/StmtHelpers;
.super Ljava/lang/Object;
.source "StmtHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static forEachCount(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 30
    instance-of v0, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/devtools/simple/runtime/Arrays;->UBound(Lcom/google/devtools/simple/runtime/variants/Variant;I)I

    move-result v0

    .line 35
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    check-cast p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;

    .end local p0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devtools/simple/runtime/collections/Collection;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/collections/Collection;->Count()I

    move-result v0

    goto :goto_0
.end method

.method public static forEachItem(Lcom/google/devtools/simple/runtime/variants/Variant;I)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    .line 48
    instance-of v0, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;

    .end local p0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/devtools/simple/runtime/variants/Variant;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->array([Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;

    .end local p0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devtools/simple/runtime/collections/Collection;

    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/collections/Collection;->Item(I)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    goto :goto_0
.end method
