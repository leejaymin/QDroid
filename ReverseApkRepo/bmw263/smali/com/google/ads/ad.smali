.class final Lcom/google/ads/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/y;

.field final synthetic b:Lcom/google/ads/ab;


# direct methods
.method constructor <init>(Lcom/google/ads/ab;Lcom/google/ads/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/ab;

    iput-object p2, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/ab;

    invoke-static {v0}, Lcom/google/ads/ab;->c(Lcom/google/ads/ab;)Lcom/google/ads/internal/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/y;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->b(Lcom/google/ads/y;)V

    .line 369
    return-void
.end method
