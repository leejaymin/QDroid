.class final Lcom/google/ads/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/o;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/q;

.field private final d:Lcom/google/ads/e;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/o;Landroid/webkit/WebView;Lcom/google/ads/internal/q;Lcom/google/ads/e;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/o;

    .line 103
    iput-object p2, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    .line 104
    iput-object p3, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/q;

    .line 105
    iput-object p4, p0, Lcom/google/ads/internal/j;->d:Lcom/google/ads/e;

    .line 106
    iput-boolean p5, p0, Lcom/google/ads/internal/j;->e:Z

    .line 107
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 114
    iget-object v0, p0, Lcom/google/ads/internal/j;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/q;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/ads/internal/j;->c:Lcom/google/ads/internal/q;

    invoke-virtual {v0}, Lcom/google/ads/internal/q;->a()V

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/internal/j;->e:Z

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->j()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/j;->a:Lcom/google/ads/internal/o;

    iget-object v1, p0, Lcom/google/ads/internal/j;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Lcom/google/ads/e;)V

    .line 131
    return-void
.end method
