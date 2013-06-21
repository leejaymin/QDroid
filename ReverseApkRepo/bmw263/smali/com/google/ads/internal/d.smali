.class final Lcom/google/ads/internal/d;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v0, "/open"

    new-instance v1, Lcom/google/ads/bc;

    invoke-direct {v1}, Lcom/google/ads/bc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "/canOpenURLs"

    new-instance v1, Lcom/google/ads/at;

    invoke-direct {v1}, Lcom/google/ads/at;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "/close"

    new-instance v1, Lcom/google/ads/av;

    invoke-direct {v1}, Lcom/google/ads/av;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/ads/as;

    invoke-direct {v1}, Lcom/google/ads/as;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "/evalInOpener"

    new-instance v1, Lcom/google/ads/aw;

    invoke-direct {v1}, Lcom/google/ads/aw;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/bb;

    invoke-direct {v1}, Lcom/google/ads/bb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "/click"

    new-instance v1, Lcom/google/ads/au;

    invoke-direct {v1}, Lcom/google/ads/au;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "/httpTrack"

    new-instance v1, Lcom/google/ads/ax;

    invoke-direct {v1}, Lcom/google/ads/ax;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "/touch"

    new-instance v1, Lcom/google/ads/bd;

    invoke-direct {v1}, Lcom/google/ads/bd;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "/video"

    new-instance v1, Lcom/google/ads/k;

    invoke-direct {v1}, Lcom/google/ads/k;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "/plusOne"

    new-instance v1, Lcom/google/ads/t;

    invoke-direct {v1}, Lcom/google/ads/t;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
