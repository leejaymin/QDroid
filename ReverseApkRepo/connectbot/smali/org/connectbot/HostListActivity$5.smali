.class Lorg/connectbot/HostListActivity$5;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 235
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    #getter for: Lorg/connectbot/HostListActivity;->transportSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lorg/connectbot/HostListActivity;->access$1(Lorg/connectbot/HostListActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    .line 234
    invoke-static {v1, v2}, Lorg/connectbot/transport/TransportFactory;->getFormatHint(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, formatHint:Ljava/lang/String;
    iget-object v1, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    #getter for: Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/connectbot/HostListActivity;->access$2(Lorg/connectbot/HostListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    #getter for: Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/connectbot/HostListActivity;->access$2(Lorg/connectbot/HostListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lorg/connectbot/HostListActivity$5;->this$0:Lorg/connectbot/HostListActivity;

    #getter for: Lorg/connectbot/HostListActivity;->quickconnect:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/connectbot/HostListActivity;->access$2(Lorg/connectbot/HostListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 241
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
