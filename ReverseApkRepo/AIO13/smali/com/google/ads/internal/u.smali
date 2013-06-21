.class final Lcom/google/ads/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/LinkedList;

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    iput-object p2, p0, Lcom/google/ads/internal/u;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/internal/u;->c:Ljava/util/LinkedList;

    iput p4, p0, Lcom/google/ads/internal/u;->d:I

    iput-boolean p5, p0, Lcom/google/ads/internal/u;->e:Z

    iput-object p6, p0, Lcom/google/ads/internal/u;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/ads/internal/u;->g:Lcom/google/ads/AdSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/u;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/u;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/u;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/u;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    iget v1, p0, Lcom/google/ads/internal/u;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(I)V

    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    iget-boolean v1, p0, Lcom/google/ads/internal/u;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/u;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/u;->g:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/u;->g:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/u;->g:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->C()V

    return-void
.end method
