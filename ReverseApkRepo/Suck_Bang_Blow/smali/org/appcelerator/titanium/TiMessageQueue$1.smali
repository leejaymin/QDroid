.class final Lorg/appcelerator/titanium/TiMessageQueue$1;
.super Ljava/lang/ThreadLocal;
.source "TiMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/TiMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/appcelerator/titanium/TiMessageQueue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue$1;->initialValue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/appcelerator/titanium/TiMessageQueue;
    .locals 5

    .prologue
    .line 57
    new-instance v0, Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-direct {v0}, Lorg/appcelerator/titanium/TiMessageQueue;-><init>()V

    .line 58
    .local v0, queue:Lorg/appcelerator/titanium/TiMessageQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 59
    sput-object v0, Lorg/appcelerator/titanium/TiMessageQueue;->mainQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    .line 61
    :cond_0
    return-object v0
.end method
