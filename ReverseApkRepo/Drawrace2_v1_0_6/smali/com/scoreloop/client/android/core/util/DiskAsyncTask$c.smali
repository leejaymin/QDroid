.class final Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 85
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
