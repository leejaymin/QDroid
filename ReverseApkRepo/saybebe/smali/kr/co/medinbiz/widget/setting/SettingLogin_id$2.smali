.class Lkr/co/medinbiz/widget/setting/SettingLogin_id$2;
.super Ljava/lang/Object;
.source "SettingLogin_id.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/setting/SettingLogin_id;->memberOverlapDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 100
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id$2;->this$0:Lkr/co/medinbiz/widget/setting/SettingLogin_id;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->setJoinWidget()V

    .line 101
    return-void
.end method
