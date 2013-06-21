.class final Lcom/google/ads/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    iput-object p2, p0, Lcom/google/ads/internal/p;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->d(Lcom/google/ads/internal/c;)Lcom/google/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->d(Lcom/google/ads/internal/c;)Lcom/google/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/p;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/p;->a:Lcom/google/ads/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/c;)V

    return-void
.end method
