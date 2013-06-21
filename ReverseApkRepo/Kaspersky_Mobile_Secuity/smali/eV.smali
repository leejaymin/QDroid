.class public final LeV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, LeV;->b:Lcom/kms/kmsshared/KMSApplication;

    iput-object p2, p0, LeV;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1037
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f080298

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    iget-object v1, p0, LeV;->a:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 1048
    const-class v1, Lgd;

    monitor-enter v1

    .line 1049
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->b:Z

    .line 1050
    invoke-virtual {v0}, Lgd;->b()V

    .line 1051
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    iget-object v0, p0, LeV;->b:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->n()V

    .line 1053
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1054
    iget-object v1, p0, LeV;->a:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
