.class public interface abstract Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;
.super Ljava/lang/Object;
.source "ScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/ScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;
    }
.end annotation


# virtual methods
.method public abstract screenManagerDidLeaveFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V
.end method

.method public abstract screenManagerWantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z
.end method

.method public abstract screenManagerWillEnterFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V
.end method

.method public abstract screenManagerWillShowOptionsMenu()V
.end method

.method public abstract screenManagerWillShowScreenDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;)V
.end method
