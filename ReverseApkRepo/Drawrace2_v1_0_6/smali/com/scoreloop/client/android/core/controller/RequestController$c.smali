.class final Lcom/scoreloop/client/android/core/controller/RequestController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/RequestController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/RequestController$c;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$c;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    instance-of v0, p1, Lcom/scoreloop/client/android/core/controller/f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 102
    :goto_0
    instance-of v1, p2, Lcom/scoreloop/client/android/core/controller/RequestCancelledException;

    .line 103
    if-nez v0, :cond_1

    .line 105
    if-nez v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$c;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->b(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$c;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->b(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/server/Request;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/server/Request;->a(Ljava/lang/Exception;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$c;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/controller/f;

    .line 117
    :cond_1
    return-void

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$c;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/controller/f;

    .line 125
    return-void
.end method
