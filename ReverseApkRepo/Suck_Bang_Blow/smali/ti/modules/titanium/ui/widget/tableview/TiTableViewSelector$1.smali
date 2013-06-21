.class Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector$1;
.super Ljava/lang/Object;
.source "TiTableViewSelector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->touchEvent(Landroid/view/MotionEvent;)V

    .line 51
    const/4 v0, 0x0

    return v0
.end method
