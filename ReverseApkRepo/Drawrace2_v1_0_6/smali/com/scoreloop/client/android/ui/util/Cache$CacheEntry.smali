.class Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheEntry"
.end annotation


# instance fields
.field private _lastAccess:J

.field private final _timeToLive:J

.field private final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/scoreloop/client/android/ui/util/Cache;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/util/Cache;Ljava/lang/Object;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter "lastAccess"
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;JJ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_value:Ljava/lang/Object;

    .line 24
    iput-wide p3, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_lastAccess:J

    .line 25
    iput-wide p5, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_timeToLive:J

    .line 26
    return-void
.end method


# virtual methods
.method getLastAccess()J
    .locals 2

    .prologue
    .line 29
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    iget-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_lastAccess:J

    return-wide v0
.end method

.method getTimeToLive()J
    .locals 2

    .prologue
    .line 37
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    iget-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_timeToLive:J

    return-wide v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method setLastAccess(J)V
    .locals 0
    .parameter "lastAccess"

    .prologue
    .line 33
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    iput-wide p1, p0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->_lastAccess:J

    .line 34
    return-void
.end method
