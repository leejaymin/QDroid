.class Lstericson/busybox/donate/Activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/Activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/Activity/MainActivity;

.field private final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/Activity/MainActivity$1;->this$0:Lstericson/busybox/donate/Activity/MainActivity;

    iput-object p2, p0, Lstericson/busybox/donate/Activity/MainActivity$1;->val$sp:Landroid/content/SharedPreferences;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 102
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto-update"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lstericson/busybox/donate/Activity/MainActivity$1;->this$0:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v1, "This feature will automatically update Busybox to the latest version when a new version is available and when updates are done to the newest version. \n\n To best take advantage of this feature, allow Busybox to automatically update from the market as the update is delivered from the Android market. \n\n No interaction is required on your part to keep Busybox updated when using this feature..Enjoy! "

    const/4 v2, 0x0

    iget-object v3, p0, Lstericson/busybox/donate/Activity/MainActivity$1;->this$0:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0, v1, v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 106
    :cond_0
    return-void
.end method
