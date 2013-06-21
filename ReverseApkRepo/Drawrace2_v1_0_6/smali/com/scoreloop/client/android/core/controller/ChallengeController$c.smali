.class final Lcom/scoreloop/client/android/core/controller/ChallengeController$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ChallengeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ChallengeController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/ChallengeController;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;-><init>(Lcom/scoreloop/client/android/core/controller/ChallengeController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/ChallengeController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;->a:Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 157
    new-instance v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;-><init>(I)V

    .line 158
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    .line 159
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;->a:Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-interface {v0, v2, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 160
    return-void
.end method
