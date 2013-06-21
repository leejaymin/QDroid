.class abstract Lcom/sphericbox/syb/browse/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final X:[Lcom/sphericbox/syb/b;

.field private final Y:Landroid/graphics/BitmapFactory$Options;

.field private final Z:[Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>([Lcom/sphericbox/syb/b;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sphericbox/syb/browse/d;->X:[Lcom/sphericbox/syb/b;

    .line 26
    iput-object p2, p0, Lcom/sphericbox/syb/browse/d;->Y:Landroid/graphics/BitmapFactory$Options;

    .line 27
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/d;->Z:[Ljava/lang/ref/SoftReference;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sphericbox/syb/browse/b;

    invoke-direct {v1, p0, p1}, Lcom/sphericbox/syb/browse/b;-><init>(Lcom/sphericbox/syb/browse/d;[Lcom/sphericbox/syb/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method


# virtual methods
.method public a(I)Lcom/sphericbox/syb/b;
    .locals 1
    .parameter

    .prologue
    .line 49
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sphericbox/syb/browse/d;->X:[Lcom/sphericbox/syb/b;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sphericbox/syb/browse/d;->X:[Lcom/sphericbox/syb/b;

    aget-object v0, v0, p1

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sphericbox/syb/browse/d;->X:[Lcom/sphericbox/syb/b;

    aget-object v1, v0, p1

    .line 66
    monitor-enter v1

    .line 67
    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/sphericbox/syb/browse/d;->Z:[Ljava/lang/ref/SoftReference;

    aget-object v2, v2, p1

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    if-nez v0, :cond_1

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/sphericbox/syb/browse/d;->Y:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Lcom/sphericbox/syb/b;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/sphericbox/syb/browse/d;->Z:[Ljava/lang/ref/SoftReference;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object v0

    .line 77
    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 78
    const-string v3, "ImageAdapter"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sphericbox/syb/browse/d;->X:[Lcom/sphericbox/syb/b;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/browse/d;->a(I)Lcom/sphericbox/syb/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method protected p()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/browse/d;->Y:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method
