.class public abstract Lccc71/utils/ccc71_shortcuts;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract b()I
.end method

.method protected b_()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    return-object v0
.end method

.method protected abstract c()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->b_()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lccc71/utils/ccc71_shortcuts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->a()I

    move-result v2

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->c()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_shortcuts;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030055

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 34
    invoke-virtual {p0}, Lccc71/utils/ccc71_shortcuts;->finish()V

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
