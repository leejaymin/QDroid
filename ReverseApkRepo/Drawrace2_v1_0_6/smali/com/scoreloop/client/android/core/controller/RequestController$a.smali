.class final Lcom/scoreloop/client/android/core/controller/RequestController$a;
.super Lcom/scoreloop/client/android/core/util/MainThreadHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Z

.field private final c:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

.field private synthetic d:Lcom/scoreloop/client/android/core/controller/RequestController;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;ZLjava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->d:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->c:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 40
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->a:Ljava/lang/Exception;

    .line 41
    iput-boolean p3, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->b:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->c:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    if-eqz v0, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->b:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->c:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->d:Lcom/scoreloop/client/android/core/controller/RequestController;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->c:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$a;->d:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    goto :goto_0
.end method
