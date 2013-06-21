.class Lkr/co/medinbiz/widget/setting/SettingMenu$1;
.super Ljava/lang/Object;
.source "SettingMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingMenu;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkr/co/medinbiz/helper/FileManager;->getVideosDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkr/co/medinbiz/helper/FileManager;->makeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingMenu;->DeleteDir(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v0, v0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu$1;->this$0:Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->message_cache_deleted:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_0
    return-void
.end method
