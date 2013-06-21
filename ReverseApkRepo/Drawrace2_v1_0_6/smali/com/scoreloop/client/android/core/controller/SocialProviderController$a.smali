.class final Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/SocialProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->e()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    .line 56
    :cond_0
    return-void
.end method
