.class Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$5;
.super Ljava/lang/Object;
.source "ProfileSettingsListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$5;->this$0:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public termsOfServiceControllerDidFinish(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "controller"
    .parameter "accepted"

    .prologue
    .line 335
    return-void
.end method
