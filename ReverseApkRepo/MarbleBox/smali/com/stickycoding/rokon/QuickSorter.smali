.class public Lcom/stickycoding/rokon/QuickSorter;
.super Lcom/stickycoding/rokon/Sorter;
.source "QuickSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stickycoding/rokon/Sorter",
        "<TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lcom/stickycoding/rokon/QuickSorter;,"Lcom/stickycoding/rokon/QuickSorter<TType;>;"
    invoke-direct {p0}, Lcom/stickycoding/rokon/Sorter;-><init>()V

    return-void
.end method

.method private partition([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 5
    .parameter "a"
    .parameter "left"
    .parameter "right"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TType;II",
            "Ljava/util/Comparator",
            "<TType;>;)I"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/stickycoding/rokon/QuickSorter;,"Lcom/stickycoding/rokon/QuickSorter<TType;>;"
    .local p4, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TType;>;"
    const/4 v3, 0x1

    sub-int v0, p2, v3

    .line 59
    .local v0, i:I
    move v1, p3

    .line 61
    .local v1, j:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    aget-object v3, p1, v0

    aget-object v4, p1, p3

    invoke-interface {p4, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 63
    :cond_1
    aget-object v3, p1, p3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, p1, v1

    invoke-interface {p4, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 68
    :goto_1
    if-lt v0, v1, :cond_3

    .line 75
    aget-object v2, p1, v0

    .line 76
    .local v2, swap:Ljava/lang/Object;,"TType;"
    aget-object v3, p1, p3

    aput-object v3, p1, v0

    .line 77
    aput-object v2, p1, p3

    .line 78
    return v0

    .line 64
    .end local v2           #swap:Ljava/lang/Object;,"TType;"
    :cond_2
    if-ne v1, p2, :cond_1

    goto :goto_1

    .line 71
    :cond_3
    aget-object v2, p1, v0

    .line 72
    .restart local v2       #swap:Ljava/lang/Object;,"TType;"
    aget-object v3, p1, v1

    aput-object v3, p1, v0

    .line 73
    aput-object v2, p1, v1

    goto :goto_0
.end method


# virtual methods
.method protected quicksort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 2
    .parameter "a"
    .parameter "left"
    .parameter "right"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TType;II",
            "Ljava/util/Comparator",
            "<TType;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/stickycoding/rokon/QuickSorter;,"Lcom/stickycoding/rokon/QuickSorter<TType;>;"
    .local p4, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TType;>;"
    if-gt p3, p2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/QuickSorter;->partition([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    .line 52
    .local v0, i:I
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/stickycoding/rokon/QuickSorter;->quicksort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 53
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/stickycoding/rokon/QuickSorter;->quicksort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0
.end method

.method protected sort([Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 2
    .parameter "array"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TType;I",
            "Ljava/util/Comparator",
            "<TType;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/stickycoding/rokon/QuickSorter;,"Lcom/stickycoding/rokon/QuickSorter<TType;>;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TType;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/stickycoding/rokon/QuickSorter;->quicksort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 28
    return-void
.end method
