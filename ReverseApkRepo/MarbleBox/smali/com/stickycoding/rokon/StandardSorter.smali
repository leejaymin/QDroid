.class public Lcom/stickycoding/rokon/StandardSorter;
.super Lcom/stickycoding/rokon/Sorter;
.source "StandardSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stickycoding/rokon/Sorter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, this:Lcom/stickycoding/rokon/StandardSorter;,"Lcom/stickycoding/rokon/StandardSorter<TT;>;"
    invoke-direct {p0}, Lcom/stickycoding/rokon/Sorter;-><init>()V

    return-void
.end method


# virtual methods
.method protected sort([Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 1
    .parameter "array"
    .parameter "count"
    .parameter "comparator"

    .prologue
    .line 31
    .local p0, this:Lcom/stickycoding/rokon/StandardSorter;,"Lcom/stickycoding/rokon/StandardSorter<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 32
    return-void
.end method
