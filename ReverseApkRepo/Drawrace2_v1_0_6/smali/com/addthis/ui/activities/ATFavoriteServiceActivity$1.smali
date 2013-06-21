.class Lcom/addthis/ui/activities/ATFavoriteServiceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ATFavoriteServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/activities/ATFavoriteServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/activities/ATFavoriteServiceActivity;


# direct methods
.method constructor <init>(Lcom/addthis/ui/activities/ATFavoriteServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity$1;->this$0:Lcom/addthis/ui/activities/ATFavoriteServiceActivity;

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity$1;->this$0:Lcom/addthis/ui/activities/ATFavoriteServiceActivity;

    #calls: Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->fetchServiceList()V
    invoke-static {v0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->access$0(Lcom/addthis/ui/activities/ATFavoriteServiceActivity;)V

    .line 87
    return-void
.end method
