.class final Lcom/google/ads/internal/f;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string v0, "/invalidRequest"

    new-instance v1, Lcom/google/ads/ay;

    invoke-direct {v1}, Lcom/google/ads/ay;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "/loadAdURL"

    new-instance v1, Lcom/google/ads/az;

    invoke-direct {v1}, Lcom/google/ads/az;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "/loadSdkConstants"

    new-instance v1, Lcom/google/ads/ba;

    invoke-direct {v1}, Lcom/google/ads/ba;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
