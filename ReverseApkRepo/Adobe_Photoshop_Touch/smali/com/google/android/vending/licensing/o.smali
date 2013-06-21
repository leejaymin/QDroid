.class final Lcom/google/android/vending/licensing/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/vending/licensing/e;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    iput p2, p0, Lcom/google/android/vending/licensing/o;->b:I

    iput-object p3, p0, Lcom/google/android/vending/licensing/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/vending/licensing/o;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    iget-object v0, v0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-static {v0}, Lcom/google/android/vending/licensing/f;->b(Lcom/google/android/vending/licensing/f;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v1}, Lcom/google/android/vending/licensing/e;->a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v0}, Lcom/google/android/vending/licensing/e;->b(Lcom/google/android/vending/licensing/e;)V

    iget-object v0, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v0}, Lcom/google/android/vending/licensing/e;->a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    iget-object v1, v1, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    invoke-static {v1}, Lcom/google/android/vending/licensing/f;->c(Lcom/google/android/vending/licensing/f;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/android/vending/licensing/o;->b:I

    iget-object v3, p0, Lcom/google/android/vending/licensing/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/licensing/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/vending/licensing/k;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    iget-object v0, v0, Lcom/google/android/vending/licensing/e;->a:Lcom/google/android/vending/licensing/f;

    iget-object v1, p0, Lcom/google/android/vending/licensing/o;->a:Lcom/google/android/vending/licensing/e;

    invoke-static {v1}, Lcom/google/android/vending/licensing/e;->a(Lcom/google/android/vending/licensing/e;)Lcom/google/android/vending/licensing/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/f;->b(Lcom/google/android/vending/licensing/f;Lcom/google/android/vending/licensing/k;)V

    :cond_0
    return-void
.end method
