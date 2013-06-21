.class public Lfp;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Landroid/util/SparseBooleanArray;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
