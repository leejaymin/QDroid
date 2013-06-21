.class public Lcom/wolfram/android/alpha/HistoryRecord$HistoryRecordComparator;
.super Ljava/lang/Object;
.source "HistoryRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/HistoryRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryRecordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wolfram/android/alpha/HistoryRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wolfram/android/alpha/HistoryRecord;Lcom/wolfram/android/alpha/HistoryRecord;)I
    .locals 3
    .parameter "h1"
    .parameter "h2"

    .prologue
    .line 106
    iget v0, p1, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 107
    .local v0, t1:I
    iget v1, p2, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 108
    .local v1, t2:I
    if-ge v0, v1, :cond_0

    .line 109
    const/4 v2, 0x1

    .line 113
    :goto_0
    return v2

    .line 110
    :cond_0
    if-le v0, v1, :cond_1

    .line 111
    const/4 v2, -0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    check-cast p1, Lcom/wolfram/android/alpha/HistoryRecord;

    .end local p1
    check-cast p2, Lcom/wolfram/android/alpha/HistoryRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/wolfram/android/alpha/HistoryRecord$HistoryRecordComparator;->compare(Lcom/wolfram/android/alpha/HistoryRecord;Lcom/wolfram/android/alpha/HistoryRecord;)I

    move-result v0

    return v0
.end method
