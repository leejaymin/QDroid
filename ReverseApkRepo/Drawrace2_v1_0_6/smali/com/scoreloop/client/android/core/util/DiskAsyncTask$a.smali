.class final Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/util/DiskAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 345
    iput-object p2, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;->b:[Ljava/lang/Object;

    .line 346
    return-void
.end method
