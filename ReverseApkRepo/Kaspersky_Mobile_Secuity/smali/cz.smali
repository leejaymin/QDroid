.class public final Lcz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/AvApplicationsMonitor;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcz;->a:I

    .line 49
    iput v0, p0, Lcz;->b:I

    .line 50
    iput v0, p0, Lcz;->c:I

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcz;->d:[Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcz;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcz;->d:[Ljava/lang/String;

    iget v1, p0, Lcz;->a:I

    aget-object v0, v0, v1

    .line 68
    iget v1, p0, Lcz;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcz;->c:I

    .line 69
    iget v1, p0, Lcz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcz;->a:I

    .line 71
    iget v1, p0, Lcz;->a:I

    iget-object v2, p0, Lcz;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcz;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcz;->c:I

    iget-object v1, p0, Lcz;->d:[Ljava/lang/String;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcz;->d:[Ljava/lang/String;

    iget v1, p0, Lcz;->b:I

    aput-object p1, v0, v1

    .line 85
    iget v0, p0, Lcz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz;->c:I

    .line 86
    iget v0, p0, Lcz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz;->b:I

    .line 88
    iget v0, p0, Lcz;->b:I

    iget-object v1, p0, Lcz;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcz;->b:I

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
