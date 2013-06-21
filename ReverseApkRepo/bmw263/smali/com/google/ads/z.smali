.class final Lcom/google/ads/z;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "banner"

    sget-object v1, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "mrec"

    sget-object v1, Lcom/google/ads/g;->c:Lcom/google/ads/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "fullbanner"

    sget-object v1, Lcom/google/ads/g;->d:Lcom/google/ads/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "leaderboard"

    sget-object v1, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "skyscraper"

    sget-object v1, Lcom/google/ads/g;->f:Lcom/google/ads/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
