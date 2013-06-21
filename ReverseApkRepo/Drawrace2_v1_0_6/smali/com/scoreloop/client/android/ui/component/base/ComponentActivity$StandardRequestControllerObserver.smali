.class Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandardRequestControllerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 49
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity$StandardRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    .line 54
    return-void
.end method
