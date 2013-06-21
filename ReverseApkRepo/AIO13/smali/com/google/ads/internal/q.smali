.class final Lcom/google/ads/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/f;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Lcom/google/ads/internal/f;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/d;

    iput-object p2, p0, Lcom/google/ads/internal/q;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/internal/q;->c:Lcom/google/ads/internal/f;

    iput-object p4, p0, Lcom/google/ads/internal/q;->d:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean p5, p0, Lcom/google/ads/internal/q;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/q;->c:Lcom/google/ads/internal/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/internal/q;->c:Lcom/google/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/ads/internal/f;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/internal/q;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/q;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method
