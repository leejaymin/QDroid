.class final Lcom/google/ads/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/y;

.field final synthetic b:Lcom/google/ads/internal/h;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/h;Lcom/google/ads/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    iput-object p2, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/internal/h;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/internal/h;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 734
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/internal/h;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->c(Lcom/google/ads/internal/h;)Lcom/google/ads/internal/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/internal/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->d(Lcom/google/ads/internal/h;)Lcom/google/ads/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->c(Lcom/google/ads/internal/h;)Lcom/google/ads/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    iget-object v1, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v1}, Lcom/google/ads/internal/h;->d(Lcom/google/ads/internal/h;)Lcom/google/ads/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/u;->b(Lcom/google/ads/g;)V

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/i;->b:Lcom/google/ads/internal/h;

    invoke-static {v0}, Lcom/google/ads/internal/h;->c(Lcom/google/ads/internal/h;)Lcom/google/ads/internal/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/y;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Lcom/google/ads/y;)V

    .line 741
    return-void
.end method
