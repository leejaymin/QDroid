.class Lti/modules/titanium/ui/widget/tableview/TiTableView$2;
.super Ljava/lang/Object;
.source "TiTableView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

.field final synthetic val$fProxy:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 298
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 299
    .local v0, eventArgs:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "firstVisibleItem"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v2, "visibleItemCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v2, "totalItemCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 303
    .local v1, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "width"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "height"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "scroll"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 307
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 287
    .local v0, eventArgs:Lorg/appcelerator/kroll/KrollDict;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 288
    .local v1, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "width"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "height"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "scrollEnd"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 293
    .end local v0           #eventArgs:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #size:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method
