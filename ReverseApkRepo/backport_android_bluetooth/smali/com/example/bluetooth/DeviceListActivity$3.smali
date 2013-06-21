.class Lcom/example/bluetooth/DeviceListActivity$3;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bluetooth/DeviceListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bluetooth/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/example/bluetooth/DeviceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/bluetooth/DeviceListActivity$3;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity$3;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    #calls: Lcom/example/bluetooth/DeviceListActivity;->doDiscovery()V
    invoke-static {v0}, Lcom/example/bluetooth/DeviceListActivity;->access$2(Lcom/example/bluetooth/DeviceListActivity;)V

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method
