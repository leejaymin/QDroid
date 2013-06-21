.class public Lti/modules/titanium/ui/TableViewSectionProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewSectionProxy.java"


# instance fields
.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewRowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public add(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "rowProxy"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 53
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowCount()D
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getRows()[Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lti/modules/titanium/ui/TableViewRowProxy;

    return-object p0
.end method

.method public insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "index"
    .parameter "row"

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 99
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 101
    .local v1, row:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->releaseViews()V

    goto :goto_0

    .line 104
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public remove(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "rowProxy"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 63
    :cond_0
    return-void
.end method

.method public removeRowAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public rowAtIndex(I)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2
    .parameter "index"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, result:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 70
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lti/modules/titanium/ui/TableViewRowProxy;
    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 73
    .restart local v0       #result:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "[object TiUITableViewSection]"

    return-object v0
.end method

.method public updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "index"
    .parameter "row"

    .prologue
    .line 87
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
