.class final Lcom/google/ads/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/internal/h;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/h;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/google/ads/internal/l;->d:Landroid/webkit/WebView;

    .line 144
    iput-object p3, p0, Lcom/google/ads/internal/l;->b:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/google/ads/internal/l;->c:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/internal/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/ads/internal/l;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/internal/l;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/l;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
