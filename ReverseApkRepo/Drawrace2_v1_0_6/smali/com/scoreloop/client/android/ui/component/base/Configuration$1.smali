.class Lcom/scoreloop/client/android/ui/component/base/Configuration$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/base/Configuration;->verifyConfiguration(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/base/Configuration;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/base/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$1;->this$0:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 197
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 0
    .parameter "aRequestController"

    .prologue
    .line 201
    return-void
.end method
