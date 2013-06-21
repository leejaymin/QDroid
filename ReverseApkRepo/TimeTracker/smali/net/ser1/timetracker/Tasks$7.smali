.class Lnet/ser1/timetracker/Tasks$7;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->openAboutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$7;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.germane-software.com/donate.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$7;->this$0:Lnet/ser1/timetracker/Tasks;

    invoke-virtual {v1, v0}, Lnet/ser1/timetracker/Tasks;->startActivity(Landroid/content/Intent;)V

    .line 692
    return-void
.end method
