.class Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;
.super Ljava/lang/Object;
.source "AppletInstallerLongClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

.field private final synthetic val$adapter:Landroid/widget/AdapterView;

.field private final synthetic val$item:Lstericson/busybox/donate/domain/Item;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;Lstericson/busybox/donate/domain/Item;ILandroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    iput-object p2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$item:Lstericson/busybox/donate/domain/Item;

    iput p3, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$position:I

    iput-object p4, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$adapter:Landroid/widget/AdapterView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 43
    new-instance v0, Lstericson/busybox/donate/jobs/UnInstallAppletJob;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    #getter for: Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v1}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->access$0(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$position:I

    iget-object v5, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$2;->val$adapter:Landroid/widget/AdapterView;

    invoke-direct/range {v0 .. v5}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/AdapterView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/UnInstallAppletJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
