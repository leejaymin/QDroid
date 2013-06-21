.class final Lf;
.super Lcom/android/vending/licensing/ILicenseResultListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Le;

.field private final b:Li;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le;Li;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lf;->a:Le;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    .line 192
    iput-object p2, p0, Lf;->b:Li;

    .line 193
    new-instance v0, Lg;

    invoke-direct {v0, p0, p1}, Lg;-><init>(Lf;Le;)V

    iput-object v0, p0, Lf;->c:Ljava/lang/Runnable;

    .line 200
    invoke-direct {p0}, Lf;->a()V

    .line 201
    return-void
.end method

.method static synthetic a(Lf;)Li;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lf;->b:Li;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 221
    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lf;->a:Le;

    invoke-static {v0}, Le;->c(Le;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lf;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lf;->a:Le;

    invoke-static {v0}, Le;->c(Le;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lf;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method static synthetic b(Lf;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lf;->b()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lf;->a:Le;

    invoke-static {v0}, Le;->c(Le;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lh;

    invoke-direct {v1, p0, p1, p2, p3}, Lh;-><init>(Lf;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
