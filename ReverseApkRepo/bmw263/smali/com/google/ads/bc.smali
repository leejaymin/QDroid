.class public final Lcom/google/ads/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/ar;


# instance fields
.field private a:Lcom/google/ads/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0}, Lcom/google/ads/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/bc;-><init>(Lcom/google/ads/b;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/google/ads/b;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/internal/o;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    if-nez v0, :cond_0

    .line 50
    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/internal/p;

    const-string v1, "webapp"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/internal/p;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/internal/o;Lcom/google/ads/internal/p;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/internal/p;

    const-string v1, "expand"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/internal/p;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/internal/o;Lcom/google/ads/internal/p;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/internal/p;

    const-string v1, "intent"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/internal/p;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/internal/o;Lcom/google/ads/internal/p;)V

    goto :goto_0
.end method
