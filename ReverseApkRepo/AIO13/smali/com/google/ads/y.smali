.class public Lcom/google/ads/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/n;


# instance fields
.field private a:Lcom/google/ads/AdActivity$StaticMethodWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-direct {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/y;-><init>(Lcom/google/ads/AdActivity$StaticMethodWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/AdActivity$StaticMethodWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/y;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "webapp"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_0

    :cond_1
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "expand"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "intent"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_0
.end method