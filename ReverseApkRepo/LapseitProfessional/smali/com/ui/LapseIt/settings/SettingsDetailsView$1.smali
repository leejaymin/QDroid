.class Lcom/ui/LapseIt/settings/SettingsDetailsView$1;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView;
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
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)Lcom/ui/LapseIt/settings/SettingsDetailsView;
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 379
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)V

    .line 404
    .local v0, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 407
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Go to Google Play"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 408
    return-void
.end method
