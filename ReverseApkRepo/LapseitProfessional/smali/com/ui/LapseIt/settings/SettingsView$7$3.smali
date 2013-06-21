.class Lcom/ui/LapseIt/settings/SettingsView$7$3;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsView$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/settings/SettingsView$7;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$7$3;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView$7$3;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v0}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v0

    const-string v1, "directory"

    const-string v2, "directory"

    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView$7$3;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v0}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$7$3;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v1}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v1

    iget-object v1, v1, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    .line 526
    return-void
.end method
