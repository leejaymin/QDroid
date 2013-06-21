.class public Lti/modules/titanium/ui/PickerColumnProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerColumnProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "PickerColumnProxy"

.field private static final MSG_ADD:I = 0x834

.field private static final MSG_FIRST_ID:I = 0x7d0

.field private static final MSG_REMOVE:I = 0x835

.field private static final MSG_SET_ROWS:I = 0x836


# instance fields
.field private columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

.field private suppressListenerEvents:Z

.field private useSpinner:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "tiContext"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 33
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 34
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 39
    return-void
.end method

.method private handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "o"

    .prologue
    .line 98
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    instance-of v2, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v2, :cond_2

    .line 100
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/PickerRowProxy;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/PickerRowProxy;->setRowListener(Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;)V

    .line 101
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/PickerRowProxy;

    move-object v2, v0

    invoke-super {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 102
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 104
    .local v1, index:I
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v2, p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 107
    .end local v1           #index:I
    :cond_2
    const-string v2, "PickerColumnProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add() unsupported argument type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 134
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local p1
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 127
    .local v0, index:I
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 128
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 132
    .end local v0           #index:I
    .restart local p1
    :cond_2
    const-string v1, "PickerColumnProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove() unsupported argment type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetRows([Ljava/lang/Object;)V
    .locals 5
    .parameter "rows"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 182
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 183
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, count:I
    sub-int v1, v0, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 185
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 184
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 192
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v2, p0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 195
    :cond_1
    return-void

    .line 190
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    throw v2
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 89
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    const/16 v0, 0x834

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addRow(Lti/modules/titanium/ui/PickerRowProxy;)V
    .locals 0
    .parameter "row"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 140
    return-void
.end method

.method protected addRows([Ljava/lang/Object;)V
    .locals 7
    .parameter "rows"

    .prologue
    .line 144
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 145
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v4, :cond_0

    .line 146
    check-cast v3, Lti/modules/titanium/ui/PickerRowProxy;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 144
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_0
    const-string v4, "PickerColumnProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type not added to picker column: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    .end local v3           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 206
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRows()[Lti/modules/titanium/ui/PickerRowProxy;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 165
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lti/modules/titanium/ui/PickerRowProxy;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSelectedRow()Lti/modules/titanium/ui/PickerRowProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 248
    .end local p0
    :goto_0
    return-object v1

    .line 244
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->getSelectedRowIndex()I

    move-result v0

    .line 245
    .local v0, rowIndex:I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerRowProxy;

    move-object v1, p0

    goto :goto_0
.end method

.method public getThisColumnIndex()I
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I

    move-result v0

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "dict"

    .prologue
    const-string v4, "rows"

    .line 76
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 77
    const-string v3, "rows"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerColumnProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "rows"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerColumnProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, rowsAtCreation:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #rowsAtCreation:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 81
    .local v1, rowsArray:[Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    .line 84
    .end local v1           #rowsArray:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 53
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 54
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 55
    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 60
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 61
    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 66
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 68
    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(I)V
    .locals 1
    .parameter "rowIndex"

    .prologue
    .line 234
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v0, p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 237
    :cond_0
    return-void
.end method

.method public parentShouldRequestLayout()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerProxy;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->forceRequestLayout()V

    .line 262
    :cond_0
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 115
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    const/16 v0, 0x835

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeRow(Lti/modules/titanium/ui/PickerRowProxy;)V
    .locals 0
    .parameter "row"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 157
    return-void
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerRowProxy;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 225
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 227
    .local v0, index:I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 230
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 43
    return-void
.end method

.method public setRows([Ljava/lang/Object;)V
    .locals 1
    .parameter "rows"

    .prologue
    .line 171
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_1
    const/16 v0, 0x836

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseSpinner(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 46
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 47
    return-void
.end method
