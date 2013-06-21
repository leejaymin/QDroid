.class Lcom/scoreloop/client/android/ui/util/Cache$2;
.super Ljava/util/LinkedHashMap;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/util/Cache;->initHardCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Lcom/scoreloop/client/android/ui/util/Cache",
        "<TK;TV;>.CacheEntry;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/util/Cache;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/util/Cache;IFZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$2;,"Lcom/scoreloop/client/android/ui/util/Cache.2;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/Cache$2;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/scoreloop/client/android/ui/util/Cache",
            "<TK;TV;>.CacheEntry;>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$2;,"Lcom/scoreloop/client/android/ui/util/Cache.2;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/util/Cache$2;->size()I

    move-result v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/util/Cache$2;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    #getter for: Lcom/scoreloop/client/android/ui/util/Cache;->_hardCacheCapacity:I
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/util/Cache;->access$000(Lcom/scoreloop/client/android/ui/util/Cache;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache$2;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    #getter for: Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/util/Cache;->access$100(Lcom/scoreloop/client/android/ui/util/Cache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
