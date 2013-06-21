.class Lstericson/busybox/donate/Activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/Activity/BaseActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/Activity/BaseActivity;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/Activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/Activity/BaseActivity$1;->this$0:Lstericson/busybox/donate/Activity/BaseActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity$1;->this$0:Lstericson/busybox/donate/Activity/BaseActivity;

    iget-object v0, v0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lstericson/busybox/donate/Activity/BaseActivity$1;->this$0:Lstericson/busybox/donate/Activity/BaseActivity;

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/Activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 84
    return-void
.end method
