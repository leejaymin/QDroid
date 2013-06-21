.class public Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;
.super Ljava/lang/Object;
.source "AppletInstallerLongClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;)Lstericson/busybox/donate/Activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0b0015

    .line 27
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/domain/Item;

    .line 29
    .local v0, item:Lstericson/busybox/donate/domain/Item;
    invoke-virtual {v0}, Lstericson/busybox/donate/domain/Item;->getFound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reinstall/Uninstall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v2, v4}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 34
    const-string v2, "Reinstall"

    new-instance v3, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$1;

    invoke-direct {v3, p0, v0, p3, p1}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$1;-><init>(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;Lstericson/busybox/donate/domain/Item;ILandroid/widget/AdapterView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 41
    const-string v2, "Uninstall"

    new-instance v3, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;

    invoke-direct {v3, p0, v0, p3, p1}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;-><init>(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;Lstericson/busybox/donate/domain/Item;ILandroid/widget/AdapterView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 48
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Install "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v2, v4}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    const-string v2, "Install"

    new-instance v3, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;

    invoke-direct {v3, p0, v0, p3, p1}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;-><init>(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;Lstericson/busybox/donate/domain/Item;ILandroid/widget/AdapterView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
