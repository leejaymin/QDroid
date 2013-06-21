.class Lstericson/busybox/donate/listeners/Location$1;
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

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/listeners/Location;Landroid/widget/EditText;Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    iput-object p2, p0, Lstericson/busybox/donate/listeners/Location$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lstericson/busybox/donate/listeners/Location$1;->val$arg0:Landroid/widget/AdapterView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/Activity/MainActivity;->setCustomPath(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Custom install path set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v2}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :goto_0
    new-instance v1, Lstericson/busybox/donate/jobs/GetSpace;

    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v2

    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/system"

    :goto_1
    iget-object v3, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    invoke-direct {v1, v2, v0, v3}, Lstericson/busybox/donate/jobs/GetSpace;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Lstericson/busybox/donate/interfaces/CallBack;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lstericson/busybox/donate/jobs/GetSpace;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    const-string v1, "That path does not exist or is not valid!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->val$arg0:Landroid/widget/AdapterView;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 48
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location$1;->val$arg0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/App;->setPath(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0, v4}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    .line 50
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/Activity/MainActivity;->setCustomPath(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location$1;->this$0:Lstericson/busybox/donate/listeners/Location;

    #getter for: Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/listeners/Location;->access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
