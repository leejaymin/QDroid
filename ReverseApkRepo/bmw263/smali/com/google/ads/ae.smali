.class final Lcom/google/ads/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/ai;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/af;

.field final synthetic d:Lcom/google/ads/ab;


# direct methods
.method constructor <init>(Lcom/google/ads/ab;Lcom/google/ads/ai;Landroid/view/View;Lcom/google/ads/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/ads/ae;->d:Lcom/google/ads/ab;

    iput-object p2, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/ai;

    iput-object p3, p0, Lcom/google/ads/ae;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/ae;->c:Lcom/google/ads/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/ads/ae;->d:Lcom/google/ads/ab;

    iget-object v1, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/ai;

    invoke-static {v0, v1}, Lcom/google/ads/ab;->a(Lcom/google/ads/ab;Lcom/google/ads/ai;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/ads/ae;->d:Lcom/google/ads/ab;

    invoke-static {v0}, Lcom/google/ads/ab;->c(Lcom/google/ads/ab;)Lcom/google/ads/internal/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ae;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/ai;

    iget-object v3, p0, Lcom/google/ads/ae;->c:Lcom/google/ads/af;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/internal/o;->a(Landroid/view/View;Lcom/google/ads/ai;Lcom/google/ads/af;)V

    goto :goto_0
.end method
