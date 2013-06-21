.class Ledu/umich/PowerTutor/ui/UMLogger$4;
.super Ljava/lang/Object;
.source "UMLogger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/UMLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$4;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ledu/umich/PowerTutor/ui/Help;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger$4;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ledu/umich/PowerTutor/ui/UMLogger;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method
