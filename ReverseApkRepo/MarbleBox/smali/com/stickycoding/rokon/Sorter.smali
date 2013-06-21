.class public abstract Lcom/stickycoding/rokon/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, this:Lcom/stickycoding/rokon/Sorter;,"Lcom/stickycoding/rokon/Sorter<TType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract sort([Ljava/lang/Object;ILjava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TType;I",
            "Ljava/util/Comparator",
            "<TType;>;)V"
        }
    .end annotation
.end method
