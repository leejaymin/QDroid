.class Lorg/connectbot/HostListActivity$4;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$4;->this$0:Lorg/connectbot/HostListActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/connectbot/HostListActivity$4;->this$0:Lorg/connectbot/HostListActivity;

    #calls: Lorg/connectbot/HostListActivity;->startConsoleActivity()Z
    invoke-static {v0}, Lorg/connectbot/HostListActivity;->access$0(Lorg/connectbot/HostListActivity;)Z

    move-result v0

    goto :goto_0
.end method
