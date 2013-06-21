.class final Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a(Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "submit user failed"

    invoke-direct {v1, v2, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a(Ljava/lang/Exception;)V

    .line 270
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a(Ljava/lang/Exception;)V

    .line 275
    return-void
.end method
