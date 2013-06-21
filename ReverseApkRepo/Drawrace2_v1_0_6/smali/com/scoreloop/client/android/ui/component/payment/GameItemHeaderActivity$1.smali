.class Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;
.super Ljava/lang/Object;
.source "GameItemHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengePaymentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 61
    :cond_0
    return-void
.end method
