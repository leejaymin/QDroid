.class Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;
.super Ljava/lang/Object;
.source "PostOverlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

.field final synthetic val$provider:Lcom/scoreloop/client/android/core/model/SocialProvider;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;Lcom/scoreloop/client/android/core/model/SocialProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;->val$provider:Lcom/scoreloop/client/android/core/model/SocialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;->val$provider:Lcom/scoreloop/client/android/core/model/SocialProvider;

    invoke-static {v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProviderController(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;Lcom/scoreloop/client/android/core/model/SocialProvider;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    move-result-object v0

    .line 146
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->connect(Landroid/app/Activity;)V

    .line 147
    return-void
.end method
