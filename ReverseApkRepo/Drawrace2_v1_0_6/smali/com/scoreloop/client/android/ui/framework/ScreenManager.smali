.class public interface abstract Lcom/scoreloop/client/android/ui/framework/ScreenManager;
.super Ljava/lang/Object;
.source "ScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;
    }
.end annotation


# virtual methods
.method public abstract display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
.end method

.method public abstract displayInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Z)V
.end method

.method public abstract displayPreviousDescription(Z)V
.end method

.method public abstract displayReferencedStackEntryInScreen(ILcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
.end method

.method public abstract displayStoredDescriptionInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
.end method

.method public abstract displayStoredDescriptionInTabs(Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;)V
.end method

.method public abstract displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
.end method

.method public abstract finishDisplay()V
.end method

.method public abstract getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
.end method

.method public abstract getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract getCurrentStackEntryReference()I
.end method

.method public abstract onShowedTab(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
.end method

.method public abstract onWillShowOptionsMenu()V
.end method

.method public abstract setDelegate(Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;)V
.end method
