.class final Lcom/thinkyeah/smartlock/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ea;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/eb;->a:Lcom/thinkyeah/smartlock/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/thinkyeah/smartlock/eb;->a:Lcom/thinkyeah/smartlock/ea;

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Lcom/thinkyeah/smartlock/ea;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/eb;->a:Lcom/thinkyeah/smartlock/ea;

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/ea;->j()Landroid/support/v4/app/g;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/g;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/thinkyeah/smartlock/SelfLockingActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v2, p0, Lcom/thinkyeah/smartlock/eb;->a:Lcom/thinkyeah/smartlock/ea;

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/ea;->j()Landroid/support/v4/app/g;

    move-result-object v2

    const v3, 0x7f020023

    invoke-static {v2, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/eb;->a:Lcom/thinkyeah/smartlock/ea;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ea;->j()Landroid/support/v4/app/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/g;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
