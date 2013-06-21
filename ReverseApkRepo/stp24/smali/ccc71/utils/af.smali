.class public Lccc71/utils/af;
.super Ljava/util/LinkedList;
.source "SourceFile"


# instance fields
.field protected c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    iput-object p1, p0, Lccc71/utils/af;->c:Ljava/util/Comparator;

    .line 16
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-super {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lccc71/utils/af;->c:Ljava/util/Comparator;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lccc71/utils/af;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    invoke-super {p0, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 29
    const/4 v0, 0x1

    return v0

    .line 27
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final e()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lccc71/utils/af;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public final declared-synchronized f()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lccc71/utils/af;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 37
    array-length v0, v5

    const/16 v3, 0x50

    if-le v0, v3, :cond_7

    .line 39
    iget-object v6, p0, Lccc71/utils/af;->c:Ljava/util/Comparator;

    array-length v0, v5

    add-int/lit8 v7, v0, -0x1

    array-length v0, v5

    :cond_0
    if-gt v0, v1, :cond_2

    .line 40
    invoke-virtual {p0, p0}, Lccc71/utils/af;->removeAll(Ljava/util/Collection;)Z

    .line 41
    array-length v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lt v2, v0, :cond_6

    .line 48
    :cond_1
    monitor-exit p0

    return-void

    .line 39
    :cond_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    move v0, v1

    :goto_1
    sub-int v3, v7, v0

    move v4, v3

    :goto_2
    if-ltz v4, :cond_0

    :try_start_1
    aget-object v8, v5, v4

    add-int v3, v4, v0

    :goto_3
    if-gt v3, v7, :cond_3

    aget-object v9, v5, v3

    invoke-interface {v6, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gtz v9, :cond_5

    :cond_3
    sub-int/2addr v3, v0

    aput-object v8, v5, v3

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_2

    :cond_4
    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xb

    goto :goto_1

    :cond_5
    sub-int v9, v3, v0

    aget-object v10, v5, v3

    aput-object v10, v5, v9

    add-int/2addr v3, v0

    goto :goto_3

    .line 41
    :cond_6
    aget-object v1, v5, v2

    invoke-super {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_7
    invoke-virtual {p0, p0}, Lccc71/utils/af;->removeAll(Ljava/util/Collection;)Z

    .line 46
    array-length v1, v5

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_1

    aget-object v2, v5, v0

    invoke-virtual {p0, v2}, Lccc71/utils/af;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
