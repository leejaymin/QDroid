.class final Lcom/google/android/vending/licensing/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/vending/licensing/e;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/licensing/j;->a:Lcom/google/android/vending/licensing/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/licensing/j;->a:Lcom/google/android/vending/licensing/e;

    iget-object v0, v0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    iget-object v1, p0, Lcom/google/android/vending/licensing/j;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v1}, Lcom/google/android/vending/licensing/e;->a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/f;->a(Lcom/google/android/vending/licensing/f;Lcom/google/android/vending/licensing/k;)V

    iget-object v0, p0, Lcom/google/android/vending/licensing/j;->a:Lcom/google/android/vending/licensing/e;

    iget-object v0, v0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    iget-object v1, p0, Lcom/google/android/vending/licensing/j;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v1}, Lcom/google/android/vending/licensing/e;->a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/f;->b(Lcom/google/android/vending/licensing/f;Lcom/google/android/vending/licensing/k;)V

    return-void
.end method
