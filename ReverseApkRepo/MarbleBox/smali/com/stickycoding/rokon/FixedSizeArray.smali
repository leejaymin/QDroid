.class public Lcom/stickycoding/rokon/FixedSizeArray;
.super Lcom/stickycoding/rokon/AllocationGuard;
.source "FixedSizeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stickycoding/rokon/AllocationGuard;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LINEAR_SEARCH_CUTOFF:I = 0x10


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mSorted:Z

.field private mSorter:Lcom/stickycoding/rokon/Sorter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/Sorter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/stickycoding/rokon/AllocationGuard;-><init>()V

    .line 48
    sget-boolean v0, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    .line 51
    iput v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 52
    iput-boolean v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 54
    new-instance v0, Lcom/stickycoding/rokon/StandardSorter;

    invoke-direct {v0}, Lcom/stickycoding/rokon/StandardSorter;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorter:Lcom/stickycoding/rokon/Sorter;

    .line 55
    return-void
.end method

.method protected constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/stickycoding/rokon/AllocationGuard;-><init>()V

    .line 60
    sget-boolean v0, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    .line 62
    iput v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 63
    iput-object p2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mComparator:Ljava/util/Comparator;

    .line 64
    iput-boolean v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 66
    new-instance v0, Lcom/stickycoding/rokon/StandardSorter;

    invoke-direct {v0}, Lcom/stickycoding/rokon/StandardSorter;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorter:Lcom/stickycoding/rokon/Sorter;

    .line 67
    return-void
.end method


# virtual methods
.method protected final add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    sget-boolean v0, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Array exhausted!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 75
    :cond_0
    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    aput-object p1, v0, v1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 78
    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 80
    :cond_1
    return-void
.end method

.method protected clear()V
    .locals 4

    .prologue
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    const/4 v3, 0x0

    .line 158
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lt v0, v1, :cond_0

    .line 161
    iput v3, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 162
    iput-boolean v3, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected find(Ljava/lang/Object;Z)I
    .locals 8
    .parameter
    .parameter "ignoreComparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    const/4 v3, -0x1

    .line 204
    .local v3, index:I
    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 205
    .local v2, count:I
    iget-boolean v5, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 206
    .local v5, sorted:Z
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mComparator:Ljava/util/Comparator;

    .line 207
    .local v0, comparator:Ljava/util/Comparator;
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    .line 208
    .local v1, contents:[Ljava/lang/Object;
    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    const/16 v7, 0x10

    if-le v2, v7, :cond_2

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 216
    :goto_0
    if-gez v3, :cond_0

    .line 217
    const/4 v3, -0x1

    .line 242
    :cond_0
    :goto_1
    return v3

    .line 212
    :cond_1
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 222
    :cond_2
    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 223
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, v2, :cond_0

    .line 224
    aget-object v7, v1, v6

    invoke-interface {v0, v7, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 225
    .local v4, result:I
    if-nez v4, :cond_3

    .line 226
    move v3, v6

    .line 227
    goto :goto_1

    .line 228
    :cond_3
    if-lez v4, :cond_4

    if-nez v5, :cond_0

    .line 223
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 234
    .end local v4           #result:I
    .end local v6           #x:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #x:I
    :goto_3
    if-ge v6, v2, :cond_0

    .line 235
    aget-object v7, v1, v6

    if-ne v7, p1, :cond_6

    .line 236
    move v3, v6

    .line 237
    goto :goto_1

    .line 234
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method protected get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    sget-boolean v1, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, result:Ljava/lang/Object;,"TT;"
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 174
    .end local v0           #result:Ljava/lang/Object;,"TT;"
    :cond_1
    return-object v0
.end method

.method protected final getArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    return-object v0
.end method

.method protected getCapacity()I
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method protected getCount()I
    .locals 1

    .prologue
    .line 268
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    return v0
.end method

.method protected remove(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 100
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    sget-boolean v1, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 102
    :cond_0
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-ge p1, v1, :cond_1

    .line 103
    move v0, p1

    .local v0, x:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lt v0, v1, :cond_2

    .line 110
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 112
    .end local v0           #x:I
    :cond_1
    return-void

    .line 104
    .restart local v0       #x:I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-ge v1, v2, :cond_3

    .line 105
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method protected remove(Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter "ignoreComparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/stickycoding/rokon/FixedSizeArray;->find(Ljava/lang/Object;Z)I

    move-result v0

    .line 90
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->remove(I)V

    .line 93
    :cond_0
    return-void
.end method

.method protected removeLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    const/4 v4, 0x1

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, object:Ljava/lang/Object;,"TT;"
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v2, v4

    aget-object v0, v1, v2

    .line 123
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 124
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    .line 126
    .end local v0           #object:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v0
.end method

.method protected set(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    sget-boolean v0, Lcom/stickycoding/rokon/FixedSizeArray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-ge p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 151
    :cond_1
    return-void
.end method

.method protected setComparator(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    iput-object p1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mComparator:Ljava/util/Comparator;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 280
    return-void
.end method

.method protected setSorter(Lcom/stickycoding/rokon/Sorter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stickycoding/rokon/Sorter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    .local p1, sorter:Lcom/stickycoding/rokon/Sorter;,"Lcom/stickycoding/rokon/Sorter<TT;>;"
    iput-object p1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorter:Lcom/stickycoding/rokon/Sorter;

    .line 284
    return-void
.end method

.method protected sort(Z)V
    .locals 4
    .parameter "forceResort"

    .prologue
    .line 254
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    iget-boolean v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorter:Lcom/stickycoding/rokon/Sorter;

    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    iget-object v3, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Sorter;->sort([Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 262
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 264
    :cond_1
    return-void

    .line 258
    :cond_2
    const-string v0, "FixedSizeArray"

    const-string v1, "No comparator specified for this type, using Arrays.sort()."

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method protected swapWithLast(I)V
    .locals 4
    .parameter "index"

    .prologue
    .local p0, this:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<TT;>;"
    const/4 v3, 0x1

    .line 134
    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 136
    .local v0, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    iget v2, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mCount:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    aget-object v3, v3, p1

    aput-object v3, v1, v2

    .line 137
    iget-object v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mContents:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/stickycoding/rokon/FixedSizeArray;->mSorted:Z

    .line 140
    .end local v0           #object:Ljava/lang/Object;,"TT;"
    :cond_0
    return-void
.end method
