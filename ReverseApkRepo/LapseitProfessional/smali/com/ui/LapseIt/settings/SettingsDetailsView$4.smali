.class Lcom/ui/LapseIt/settings/SettingsDetailsView$4;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;)Lcom/ui/LapseIt/settings/SettingsDetailsView;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v0, v0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 217
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x1

    .line 173
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    const-string v3, "Set brightness"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, input:Landroid/widget/EditText;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 178
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 179
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 180
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 184
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    .line 185
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 187
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 189
    const-string v3, "Set"

    .line 190
    new-instance v4, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/ui/LapseIt/settings/SettingsDetailsView$4$1;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView$4;Landroid/widget/EditText;Landroid/widget/SeekBar;)V

    .line 189
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void
.end method
