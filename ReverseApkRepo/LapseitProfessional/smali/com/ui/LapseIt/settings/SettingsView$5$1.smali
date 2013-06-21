.class Lcom/ui/LapseIt/settings/SettingsView$5$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsView$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView$5;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    iput-object p2, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->val$v:Landroid/view/View;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v3, 0x7f0b

    .line 440
    packed-switch p2, :pswitch_data_0

    .line 450
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 451
    return-void

    .line 442
    :pswitch_0
    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v1}, Lcom/ui/LapseIt/settings/SettingsView$5;->access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v1}, Lcom/ui/LapseIt/settings/SettingsView$5;->access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$5;->access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    iget-object v2, v2, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v1}, Lcom/ui/LapseIt/settings/SettingsView$5;->access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$5$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$5;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$5;->access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    iget-object v2, v2, Lcom/ui/LapseIt/settings/SettingsView;->renderContainer:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;->RENDER_ITEMS:[[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
