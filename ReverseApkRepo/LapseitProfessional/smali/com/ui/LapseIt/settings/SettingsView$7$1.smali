.class Lcom/ui/LapseIt/settings/SettingsView$7$1;
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

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView$7;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    iput-object p2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->val$input:Landroid/widget/EditText;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 497
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v1, outputFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    const-string v3, "directory"

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    .line 512
    .end local v1           #outputFolder:Ljava/io/File;
    :goto_0
    return-void

    .line 504
    .restart local v1       #outputFolder:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    const-string v3, "It was not possible to use this folder"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v1           #outputFolder:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsView$7$1;->this$1:Lcom/ui/LapseIt/settings/SettingsView$7;

    #getter for: Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsView$7;->access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;

    move-result-object v2

    const-string v3, "It was not possible to use this folder"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
