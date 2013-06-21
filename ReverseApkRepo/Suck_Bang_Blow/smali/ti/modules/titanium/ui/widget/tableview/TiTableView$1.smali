.class Lti/modules/titanium/ui/widget/tableview/TiTableView$1;
.super Landroid/widget/ListView;
.source "TiTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 253
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 255
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->keyEvent(IILandroid/view/KeyEvent;)V

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 261
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->keyEvent(IILandroid/view/KeyEvent;)V

    .line 264
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->keyEvent(IILandroid/view/KeyEvent;)V

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
