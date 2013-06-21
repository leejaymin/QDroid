.class public final LeZ;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, LeZ;->a:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, LeZ;->a:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    iget-object v3, v0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    .line 1091
    if-nez v3, :cond_1

    .line 1113
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 1095
    :goto_0
    const/16 v0, 0x14

    if-ge v2, v0, :cond_0

    .line 1096
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lfw;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v4

    .line 1098
    array-length v0, v4

    if-eqz v0, :cond_2

    .line 1099
    array-length v2, v4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v1, v4, v0

    .line 1100
    iget-object v3, p0, LeZ;->a:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    iget-object v3, v3, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1105
    :cond_2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1107
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
