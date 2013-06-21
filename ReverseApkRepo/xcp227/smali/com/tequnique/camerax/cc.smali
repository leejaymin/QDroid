.class final Lcom/tequnique/camerax/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/SettingsViewSaveActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cc;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/cc;)Lcom/tequnique/camerax/SettingsViewSaveActivity;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/cc;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@y@m@d_@H@M@S"

    aput-object v2, v0, v1

    const-string v1, "campro_@COUNTER"

    aput-object v1, v0, v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tequnique/camerax/cc;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tequnique/camerax/cc;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, -0x1

    new-instance v3, Lcom/tequnique/camerax/cd;

    invoke-direct {v3, p0, v0}, Lcom/tequnique/camerax/cd;-><init>(Lcom/tequnique/camerax/cc;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/cc;->a:Lcom/tequnique/camerax/SettingsViewSaveActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/ce;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/ce;-><init>(Lcom/tequnique/camerax/cc;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
