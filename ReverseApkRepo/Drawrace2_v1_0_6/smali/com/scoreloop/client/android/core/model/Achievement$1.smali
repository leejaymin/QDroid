.class final Lcom/scoreloop/client/android/core/model/Achievement$1;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/model/Achievement;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/model/Achievement;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Achievement$1;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method

.method private varargs e()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement$1;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Lcom/scoreloop/client/android/core/model/Achievement;)Lcom/scoreloop/client/android/core/model/AchievementsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Achievement$1;->a:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/model/AchievementsStore;->a(Lcom/scoreloop/client/android/core/model/Achievement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Achievement$1;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
