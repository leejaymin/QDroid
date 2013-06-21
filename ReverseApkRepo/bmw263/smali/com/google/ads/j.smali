.class public final Lcom/google/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/google/ads/j;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/ads/j;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/ads/j;->c:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lcom/google/ads/j;->d:Ljava/util/HashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/ads/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/j;->d:Ljava/util/HashMap;

    return-object v0
.end method
