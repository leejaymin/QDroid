.class final Lcom/google/ads/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/o;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/LinkedList;

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/ads/g;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/o;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    .line 178
    iput-object p2, p0, Lcom/google/ads/internal/n;->b:Landroid/webkit/WebView;

    .line 179
    iput-object p3, p0, Lcom/google/ads/internal/n;->c:Ljava/util/LinkedList;

    .line 180
    iput p4, p0, Lcom/google/ads/internal/n;->d:I

    .line 181
    iput-boolean p5, p0, Lcom/google/ads/internal/n;->e:Z

    .line 182
    iput-object p6, p0, Lcom/google/ads/internal/n;->f:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/google/ads/internal/n;->g:Lcom/google/ads/g;

    .line 184
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/ads/internal/n;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/ads/internal/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 191
    iget-object v0, p0, Lcom/google/ads/internal/n;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    iget-object v1, p0, Lcom/google/ads/internal/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Ljava/util/LinkedList;)V

    .line 194
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    iget v1, p0, Lcom/google/ads/internal/n;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(I)V

    .line 195
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    iget-boolean v1, p0, Lcom/google/ads/internal/n;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    iget-object v1, p0, Lcom/google/ads/internal/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/ads/internal/n;->g:Lcom/google/ads/g;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    iget-object v1, p0, Lcom/google/ads/internal/n;->g:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/u;->b(Lcom/google/ads/g;)V

    .line 199
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->j()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/n;->g:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/g;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/n;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->x()V

    .line 202
    return-void
.end method
