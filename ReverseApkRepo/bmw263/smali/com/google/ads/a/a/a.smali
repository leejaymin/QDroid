.class public Lcom/google/ads/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/a/h;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/google/ads/a/a/a;->a:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/ads/a/a/a;->b:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/a/a;->c:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/ads/a/a/a;->a:Z

    return v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ads/a/a/a;->c:Ljava/util/Map;

    return-object v0
.end method
