.class Lcom/ui/LapseIt/settings/SettingsView$5;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsView;
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
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsView$5;)Lcom/ui/LapseIt/settings/SettingsView;
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 437
    new-instance v1, Lcom/ui/LapseIt/settings/SettingsView$5$1;

    invoke-direct {v1, p0, p1}, Lcom/ui/LapseIt/settings/SettingsView$5$1;-><init>(Lcom/ui/LapseIt/settings/SettingsView$5;Landroid/view/View;)V

    .line 454
    .local v1, alertListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 456
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 457
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 461
    :catch_0
    move-exception v2

    .line 462
    .local v2, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v2           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v2

    .line 464
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
