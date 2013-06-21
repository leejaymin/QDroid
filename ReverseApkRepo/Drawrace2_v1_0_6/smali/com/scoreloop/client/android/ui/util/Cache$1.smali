.class Lcom/scoreloop/client/android/ui/util/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/util/Cache;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/util/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$1;,"Lcom/scoreloop/client/android/ui/util/Cache.1;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/Cache$1;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache$1;,"Lcom/scoreloop/client/android/ui/util/Cache.1;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache$1;->this$0:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/Cache;->purgeCache()V

    .line 54
    return-void
.end method
