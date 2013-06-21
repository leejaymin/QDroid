.class Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;
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
    iput-object p1, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    iput-object p2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$item:Lstericson/busybox/donate/domain/Item;

    iput p3, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$position:I

    iput-object p4, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$adapter:Landroid/widget/AdapterView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 54
    iget-object v0, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    #getter for: Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->access$0(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->stopGatherInformation()V

    .line 56
    new-instance v0, Lstericson/busybox/donate/jobs/InstallAppletJob;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->this$0:Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    #getter for: Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v1}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;->access$0(Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$position:I

    iget-object v4, p0, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener$3;->val$adapter:Landroid/widget/AdapterView;

    invoke-direct {v0, v1, v2, v3, v4}, Lstericson/busybox/donate/jobs/InstallAppletJob;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;ILandroid/widget/AdapterView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/jobs/InstallAppletJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method
