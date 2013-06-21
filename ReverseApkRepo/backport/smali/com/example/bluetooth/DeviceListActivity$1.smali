.class Lcom/example/bluetooth/DeviceListActivity$1;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/bluetooth/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bluetooth/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/example/bluetooth/DeviceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/bluetooth/DeviceListActivity$1;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/example/bluetooth/DeviceListActivity$1;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    #getter for: Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/example/bluetooth/DeviceListActivity;->access$0(Lcom/example/bluetooth/DeviceListActivity;)Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lbackport/android/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 163
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, info:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, address:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Lcom/example/bluetooth/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/example/bluetooth/DeviceListActivity$1;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/example/bluetooth/DeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    iget-object v3, p0, Lcom/example/bluetooth/DeviceListActivity$1;->this$0:Lcom/example/bluetooth/DeviceListActivity;

    invoke-virtual {v3}, Lcom/example/bluetooth/DeviceListActivity;->finish()V

    .line 173
    return-void
.end method
