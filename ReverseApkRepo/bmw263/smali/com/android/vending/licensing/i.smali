.class final Lcom/android/vending/licensing/i;
.super Lcom/android/vending/licensing/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/vending/licensing/h;

.field private final b:Lcom/android/vending/licensing/n;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/vending/licensing/i;->a:Lcom/android/vending/licensing/h;

    invoke-direct {p0}, Lcom/android/vending/licensing/d;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/android/vending/licensing/i;->b:Lcom/android/vending/licensing/n;

    .line 192
    new-instance v0, Lcom/android/vending/licensing/j;

    invoke-direct {v0, p0}, Lcom/android/vending/licensing/j;-><init>(Lcom/android/vending/licensing/i;)V

    iput-object v0, p0, Lcom/android/vending/licensing/i;->c:Ljava/lang/Runnable;

    .line 199
    iget-object v0, p0, Lcom/android/vending/licensing/i;->a:Lcom/android/vending/licensing/h;

    invoke-static {v0}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/i;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/vending/licensing/i;->b:Lcom/android/vending/licensing/n;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vending/licensing/i;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/vending/licensing/i;->a:Lcom/android/vending/licensing/h;

    invoke-static {v0}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/i;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vending/licensing/i;->a:Lcom/android/vending/licensing/h;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/vending/licensing/i;->a:Lcom/android/vending/licensing/h;

    invoke-static {v0}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/vending/licensing/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/vending/licensing/k;-><init>(Lcom/android/vending/licensing/i;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method
