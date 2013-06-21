.class final Lcom/scoreloop/client/android/core/util/Cache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Lcom/scoreloop/client/android/core/util/Cache",
        "<TK;TV;>.a;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/util/Cache;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/util/Cache;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/Cache$1;->a:Lcom/scoreloop/client/android/core/util/Cache;

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/scoreloop/client/android/core/util/Cache",
            "<TK;TV;>.a;>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/Cache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache$1;->a:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/Cache;->a(Lcom/scoreloop/client/android/core/util/Cache;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache$1;->a:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/Cache;->b(Lcom/scoreloop/client/android/core/util/Cache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
