.class Lstericson/busybox/donate/listeners/Location$2;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/listeners/Location;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/listeners/Location;

.field private final synthetic val$arg0:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/listeners/Location;Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    iput-object p2, p0, Lstericson/busybox/donate/listeners/Location$2;->val$arg0:Landroid/widget/AdapterView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$2;->val$arg0:Landroid/widget/AdapterView;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 59
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location$2;->val$arg0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/App;->setPath(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0, v4}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    .line 61
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/Activity/MainActivity;->setCustomPath(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lstericson/busybox/donate/jobs/GetSpace;

    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v2

    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system"

    :goto_0
    iget-object v3, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    invoke-direct {v1, v2, v0, v3}, Lstericson/busybox/donate/jobs/GetSpace;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Lstericson/busybox/donate/interfaces/CallBack;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lstericson/busybox/donate/jobs/GetSpace;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$2;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
