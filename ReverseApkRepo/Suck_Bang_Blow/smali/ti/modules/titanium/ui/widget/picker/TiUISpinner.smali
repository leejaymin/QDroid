.class public Lti/modules/titanium/ui/widget/picker/TiUISpinner;
.super Lti/modules/titanium/ui/widget/picker/TiUIPicker;
.source "TiUISpinner.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUISpinner"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 2
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 32
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 33
    .local v0, layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setDisableHorizontalWrap(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->setNativeView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method private propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 119
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 120
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 121
    .local v0, child:Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 126
    .end local v0           #child:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private refreshColumn(I)V
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 50
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V

    goto :goto_0
.end method

.method private refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->refreshNativeView()V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    const-string v4, "visibleItems"

    const-string v3, "selectionIndicator"

    .line 141
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "visibleItems"

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "visibleItems"

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "visibleItems"

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "selectionIndicator"

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "selectionIndicator"

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "selectionIndicator"

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 147
    :cond_1
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 148
    return-void
.end method

.method public forceRequestLayout()V
    .locals 3

    .prologue
    .line 151
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 152
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 153
    .local v0, child:Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v2, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v2, :cond_0

    .line 154
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0           #child:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->forceRequestLayout()V

    goto :goto_0

    .line 158
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->layoutNativeView()V

    .line 159
    return-void
.end method

.method public getSelectedRowIndex(I)I
    .locals 5
    .parameter "columnIndex"

    .prologue
    const/4 v3, -0x1

    const-string v4, "TiUISpinner"

    .line 66
    if-ltz p1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 67
    :cond_0
    const-string v1, "TiUISpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring effort to get selected row index for out-of-bounds columnIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 75
    :goto_0
    return v1

    .line 70
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 71
    .local v0, child:Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v1, :cond_2

    .line 72
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0           #child:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->getSelectedRowIndex()I

    move-result v1

    goto :goto_0

    .line 74
    .restart local v0       #child:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const-string v1, "TiUISpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not locate column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Ignoring effort to get selected row index in that column."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 75
    goto :goto_0
.end method

.method public onColumnModelChanged(I)V
    .locals 0
    .parameter "columnIndex"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(I)V

    .line 97
    return-void
.end method

.method public onRowChanged(II)V
    .locals 0
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(I)V

    .line 102
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "d"

    .prologue
    const-string v2, "visibleItems"

    const-string v1, "selectionIndicator"

    .line 130
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 131
    const-string v0, "visibleItems"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "visibleItems"

    const-string v0, "visibleItems"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_0
    const-string v0, "selectionIndicator"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "selectionIndicator"

    const-string v0, "selectionIndicator"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_1
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const-string v1, "visibleItems"

    .line 107
    const-string v0, "visibleItems"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "selectionIndicator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->propagateProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "visibleItems"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->forceRequestLayout()V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected refreshNativeView()V
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 44
    .local v0, child:Lorg/appcelerator/titanium/view/TiUIView;
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0           #child:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->refreshColumn(Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;)V

    goto :goto_0
.end method

.method public selectRow(IIZ)V
    .locals 4
    .parameter "columnIndex"
    .parameter "rowIndex"
    .parameter "animated"

    .prologue
    const-string v3, "TiUISpinner"

    .line 81
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 82
    :cond_0
    const-string v1, "TiUISpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist.  Ignoring effort to select a row in that column."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    .line 86
    .local v0, child:Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-eqz v1, :cond_2

    .line 87
    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    .end local v0           #child:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->selectRow(I)V

    goto :goto_0

    .line 89
    .restart local v0       #child:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    const-string v1, "TiUISpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not locate column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Ignoring effort to select a row in that column."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
