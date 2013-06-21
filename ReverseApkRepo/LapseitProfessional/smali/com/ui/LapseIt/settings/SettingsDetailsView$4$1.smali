.class Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;Landroid/widget/EditText;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

    iput-object p2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->val$seekBar:Landroid/widget/SeekBar;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 192
    const/16 v1, 0x32

    .line 194
    .local v1, tempBright:I
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    if-gez v1, :cond_1

    .line 200
    const/4 v1, 0x0

    .line 205
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 207
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v2

    const-string v3, "dim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v2

    iget-object v2, v2, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 202
    const/16 v1, 0x64

    goto :goto_1
.end method
