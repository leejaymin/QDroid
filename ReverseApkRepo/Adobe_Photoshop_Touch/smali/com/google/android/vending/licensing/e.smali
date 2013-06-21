.class final Lcom/google/android/vending/licensing/e;
.super Lcom/google/android/vending/licensing/r;


# instance fields
.field final synthetic a:Lcom/google/android/vending/licensing/f;

.field private final b:Lcom/google/android/vending/licensing/k;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/licensing/f;Lcom/google/android/vending/licensing/k;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-direct {p0}, Lcom/google/android/vending/licensing/r;-><init>()V

    iput-object p2, p0, Lcom/google/android/vending/licensing/e;->b:Lcom/google/android/vending/licensing/k;

    new-instance v0, Lcom/google/android/vending/licensing/j;

    invoke-direct {v0, p0}, Lcom/google/android/vending/licensing/j;-><init>(Lcom/google/android/vending/licensing/e;)V

    iput-object v0, p0, Lcom/google/android/vending/licensing/e;->c:Ljava/lang/Runnable;

    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-static {v0}, Lcom/google/android/vending/licensing/f;->a(Lcom/google/android/vending/licensing/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/e;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->b:Lcom/google/android/vending/licensing/k;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/vending/licensing/e;)V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-static {v0}, Lcom/google/android/vending/licensing/f;->a(Lcom/google/android/vending/licensing/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-static {v0}, Lcom/google/android/vending/licensing/f;->a(Lcom/google/android/vending/licensing/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/licensing/o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/vending/licensing/o;-><init>(Lcom/google/android/vending/licensing/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
