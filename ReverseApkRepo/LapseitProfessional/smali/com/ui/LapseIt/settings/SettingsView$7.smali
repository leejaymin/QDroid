.class Lcom/ui/LapseIt/settings/SettingsView$7;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsView;->createFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsView$7;)Lcom/ui/LapseIt/settings/SettingsView;
    .locals 1
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 478
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    const-string v4, "directory"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, currentPath:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 483
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 484
    .local v2, input:Landroid/widget/EditText;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 485
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 486
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 487
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 488
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 492
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    new-instance v4, Lcom/ui/LapseIt/settings/SettingsView$7$1;

    invoke-direct {v4, p0, v2}, Lcom/ui/LapseIt/settings/SettingsView$7$1;-><init>(Lcom/ui/LapseIt/settings/SettingsView$7;Landroid/widget/EditText;)V

    .line 492
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 515
    new-instance v4, Lcom/ui/LapseIt/settings/SettingsView$7$2;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/SettingsView$7$2;-><init>(Lcom/ui/LapseIt/settings/SettingsView$7;)V

    .line 514
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    new-instance v4, Lcom/ui/LapseIt/settings/SettingsView$7$3;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/SettingsView$7$3;-><init>(Lcom/ui/LapseIt/settings/SettingsView$7;)V

    .line 520
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 529
    return-void
.end method
