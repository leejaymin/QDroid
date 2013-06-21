.class Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;
.super Ljava/lang/Object;
.source "PowerTop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$startIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    iput-object p2, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->val$startIntent:Landroid/content/Intent;

    iput-object p3, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->val$activity:Landroid/app/Activity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ledu/umich/PowerTutor/ui/PowerTabs;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v0, viewIntent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->val$startIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 338
    const-string v1, "uid"

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->uidInfo:Ledu/umich/PowerTutor/service/UidInfo;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;->access$0(Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView;)Ledu/umich/PowerTutor/service/UidInfo;

    move-result-object v2

    iget v2, v2, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$UidPowerView$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    return-void
.end method
