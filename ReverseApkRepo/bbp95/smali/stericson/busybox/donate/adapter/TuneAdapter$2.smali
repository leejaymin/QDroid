.class Lstericson/busybox/donate/adapter/TuneAdapter$2;
.super Ljava/lang/Object;
.source "TuneAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/adapter/TuneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/adapter/TuneAdapter;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$2;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$2;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter;->access$0(Lstericson/busybox/donate/adapter/TuneAdapter;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    const-string v1, "This feature will instruct the installer to make sure that applets are not duplicated. This will keep your system cleaner, save more space, and will ensure that other applications do not have problems using the applets provided by Busybox. \n\n Please be very careful when using this option as it can cause system problems if the applets removed by using this option are required by your system. \n\n THIS IS AN ADVANCED OPTION, USE WITH CARE!"

    const/4 v2, 0x0

    iget-object v3, p0, Lstericson/busybox/donate/adapter/TuneAdapter$2;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v3}, Lstericson/busybox/donate/adapter/TuneAdapter;->access$0(Lstericson/busybox/donate/adapter/TuneAdapter;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$2;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;
    invoke-static {v0}, Lstericson/busybox/donate/adapter/TuneAdapter;->access$0(Lstericson/busybox/donate/adapter/TuneAdapter;)Lstericson/busybox/donate/Activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lstericson/busybox/donate/Activity/MainActivity;->setClean(Z)V

    .line 199
    return-void
.end method
