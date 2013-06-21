.class public final Lgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# instance fields
.field private final a:[B

.field private b:Lgm;

.field private c:Le;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lgl;->a:[B

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iput-object p1, p0, Lgl;->d:Landroid/content/Context;

    .line 45
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x1
        0xd5t
        0x3dt
        0x20t
        0xeet
        0xf3t
        0xf9t
        0x17t
        0xf4t
        0x7ft
        0xbet
        0x23t
        0x2dt
        0xb3t
        0x11t
        0x24t
        0xdt
        0xbt
        0xfdt
        0x4t
        0xf7t
    .end array-data
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/activation/gui/SubscriptionErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "canRetry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lgl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    invoke-static {v2}, Lgj;->a(Z)V

    .line 69
    invoke-static {}, Lgm;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0, v2}, Lgl;->a(Ljava/lang/String;Z)V

    .line 75
    :cond_0
    iget-object v0, p0, Lgl;->c:Le;

    invoke-virtual {v0}, Le;->a()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lgl;->c:Le;

    .line 77
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    iget-object v0, p0, Lgl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    invoke-static {v2}, Lgj;->a(Z)V

    .line 83
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0, v2}, Lgl;->a(Ljava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lgl;->c:Le;

    invoke-virtual {v0}, Le;->a()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lgl;->c:Le;

    .line 88
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lgl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lgj;->a(Z)V

    .line 106
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0, v2}, Lgl;->a(Ljava/lang/String;Z)V

    .line 114
    iget-object v0, p0, Lgl;->c:Le;

    invoke-virtual {v0}, Le;->a()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lgl;->c:Le;

    .line 116
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lgl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lgl;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lgm;

    iget-object v2, p0, Lgl;->d:Landroid/content/Context;

    new-instance v3, La;

    iget-object v4, p0, Lgl;->a:[B

    iget-object v5, p0, Lgl;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, La;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lgm;-><init>(Landroid/content/Context;Lk;)V

    iput-object v1, p0, Lgl;->b:Lgm;

    .line 59
    new-instance v0, Le;

    iget-object v1, p0, Lgl;->d:Landroid/content/Context;

    iget-object v2, p0, Lgl;->b:Lgm;

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp/uYxy566pUFfKC5gxp8k3QPiTQhagkCOLbbXopugVpGslUFFz5omUqBpmAGejy8ZxyOmBuUMW9IuKPI9pK2rjM5YFc2lfyTUwMY3q8GvN5I232ayKlYrq0xJb+qXUFtjnn0kh5ckYL9Dfbk1qqY/B8LG+Q/MCsFVwvDzg1wIkDv2fhjIlGtv05peZe9yjwD9yBfiGk3va/nqbMg68s6zFF4GEI/3MKRStskxYMii8gRfYOePdMRDompoDJMiNXUCNOigWkkrVw1u1KChuS1cPz3tOlJuIUmxzTQ3lgnvf23H9JqZk8G8pTa+UansnOm0VnJYmAGmpdjMsxW4FHuxwIDAQAB"

    invoke-direct {v0, v1, v2, v3}, Le;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v0, p0, Lgl;->c:Le;

    .line 62
    iget-object v0, p0, Lgl;->c:Le;

    invoke-virtual {v0, p0}, Le;->a(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    goto :goto_0
.end method
