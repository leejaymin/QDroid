.class public Lti/modules/titanium/ui/PickerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;


# static fields
.field public static final DEFAULT_VISIBLE_ITEMS_COUNT:I = 0x5

.field private static final LCAT:Ljava/lang/String; = "PickerProxy"

.field private static final MSG_ADD:I = 0x837

.field private static final MSG_FIRE_COL_CHANGE:I = 0x839

.field private static final MSG_FIRE_ROW_CHANGE:I = 0x83a

.field private static final MSG_FIRST_ID:I = 0x7d0

.field private static final MSG_FORCE_LAYOUT:I = 0x83b

.field private static final MSG_REMOVE:I = 0x838

.field private static final MSG_SELECT_ROW:I = 0x835

.field private static final MSG_SET_COLUMNS:I = 0x836


# instance fields
.field private preselectedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private useSpinner:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 62
    return-void
.end method

.method private createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 115
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 130
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"
    .parameter "useSpinner"

    .prologue
    .line 109
    if-eqz p2, :cond_0

    new-instance v1, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    move-object v0, v1

    .line 110
    .local v0, picker:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :goto_0
    return-object v0

    .line 109
    .end local v0           #picker:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_0
    new-instance v1, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 120
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 125
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private fireColumnModelChange(I)V
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 648
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x839

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 655
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 656
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private fireRowChange(II)V
    .locals 3
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 669
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 680
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x83a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 677
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 678
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleAddObject(Ljava/lang/Object;)V
    .locals 5
    .parameter "child"

    .prologue
    const/4 v3, 0x1

    .line 222
    instance-of v2, p1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v2, :cond_1

    .line 223
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    move-object v1, v0

    .line 224
    .local v1, column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 225
    invoke-super {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnAdded(I)V

    .line 236
    .end local v1           #column:Lti/modules/titanium/ui/PickerColumnProxy;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local p1
    :cond_1
    instance-of v2, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v2

    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 231
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v2

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    .restart local p1
    :cond_3
    const-string v2, "PickerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type not added to picker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleFireColumnModelChange(I)V
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 662
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnModelChanged(I)V

    .line 665
    :cond_0
    return-void
.end method

.method private handleFireRowChange(II)V
    .locals 1
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 684
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onRowChanged(II)V

    .line 687
    :cond_0
    return-void
.end method

.method private handleForceRequestLayout()V
    .locals 0

    .prologue
    .line 762
    iget-object p0, p0, Lti/modules/titanium/ui/PickerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->forceRequestLayout()V

    .line 763
    return-void
.end method

.method private handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, index:I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 193
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnRemoved(I)V

    .line 196
    :cond_1
    return-void
.end method

.method private handleSelectRow(IIZ)V
    .locals 1
    .parameter "column"
    .parameter "row"
    .parameter "animated"

    .prologue
    .line 420
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    .end local p0
    :goto_0
    return-void

    .line 423
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {p0, p1, p2, p3}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->selectRow(IIZ)V

    goto :goto_0
.end method

.method private handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 415
    const-string v0, "column"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "row"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "animated"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    .line 416
    return-void
.end method

.method private handleSetColumns(Ljava/lang/Object;)V
    .locals 14
    .parameter "passedColumns"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 372
    const/4 v4, 0x0

    .line 374
    .local v4, dirty:Z
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_0

    .line 375
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 377
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 378
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 379
    .local v3, count:I
    sub-int v5, v3, v13

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 380
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/PickerProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 381
    const/4 v4, 0x1

    .line 379
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 384
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_1
    const/4 v2, 0x0

    .line 385
    .local v2, columns:[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 386
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 390
    :goto_1
    const/4 v10, 0x0

    aget-object v10, v2, v10

    instance-of v10, v10, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v10, :cond_6

    .line 391
    const-string v10, "PickerProxy"

    const-string v11, "Unexpected object type ignored for setColumns"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_3

    .line 402
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 405
    :cond_3
    if-eqz v4, :cond_4

    .line 406
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    check-cast v9, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    .line 407
    .local v9, pickerView:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    if-eqz v9, :cond_4

    .line 408
    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onModelReplaced()V

    .line 411
    .end local v9           #pickerView:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_4
    return-void

    .line 388
    .restart local p1
    :cond_5
    const/4 v10, 0x1

    :try_start_1
    new-array v2, v10, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v2, v10

    .restart local v2       #columns:[Ljava/lang/Object;
    goto :goto_1

    .line 393
    .end local p1
    :cond_6
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v8, v1, v6

    .line 394
    .local v8, o:Ljava/lang/Object;
    instance-of v10, v8, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v10, :cond_7

    .line 395
    check-cast v8, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v8           #o:Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    const/4 v4, 0x1

    .line 393
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 401
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #columns:[Ljava/lang/Object;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v11

    instance-of v11, v11, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v11, :cond_8

    .line 402
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, p0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    :cond_8
    throw v10
.end method

.method private isPlainPicker()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 240
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    .line 241
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/PickerColumnProxy;->setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V

    .line 242
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 209
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to add to date/time or countdown picker ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 214
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_2
    const/16 v0, 0x837

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->add(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const-string v3, "PickerProxy"

    .line 81
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "PickerProxy"

    const-string v0, "Countdown timer not supported in Titanium for Android"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 103
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 85
    const-string v0, "PickerProxy"

    const-string v0, "Date+Time timer not supported in Titanium for Android"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 88
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/PickerProxy;->createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 90
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_3

    .line 91
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_4
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    if-nez v0, :cond_6

    .line 96
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_5

    .line 97
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_5
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_6
    const-string v0, "PickerProxy"

    const-string v0, "Unknown picker type"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 103
    goto :goto_0
.end method

.method public fireSelectionChange(II)V
    .locals 9
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 691
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 692
    .local v2, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "columnIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v7, "rowIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 695
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v4

    .line 696
    .local v4, row:Lti/modules/titanium/ui/PickerRowProxy;
    const-string v7, "column"

    invoke-virtual {v2, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v7, "row"

    invoke-virtual {v2, v7, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnCount()I

    move-result v1

    .line 699
    .local v1, columnCount:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 700
    .local v6, selectedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 701
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v5

    .line 702
    .local v5, rowInColumn:Lti/modules/titanium/ui/PickerRowProxy;
    if-eqz v5, :cond_0

    .line 703
    invoke-virtual {v5}, Lti/modules/titanium/ui/PickerRowProxy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 708
    .end local v5           #rowInColumn:Lti/modules/titanium/ui/PickerRowProxy;
    :cond_1
    const-string v7, "selectedValue"

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v7, "change"

    invoke-virtual {p0, v7, v2}, Lti/modules/titanium/ui/PickerProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 710
    return-void
.end method

.method public forceRequestLayout()V
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    goto :goto_0

    .line 756
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 1
    .parameter "index"

    .prologue
    .line 438
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v0, :cond_1

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 441
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerColumnProxy;

    move-object v0, p0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 429
    .local v0, columns:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v0, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 432
    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I
    .locals 1
    .parameter "column"

    .prologue
    .line 447
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 448
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string v0, "PickerProxy"

    const-string v1, "Cannot get columns from date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    .line 353
    .end local p0
    :goto_0
    return-object v0

    .line 350
    .restart local p0
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 351
    const/4 v0, 0x0

    new-array v0, v0, [Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lti/modules/titanium/ui/PickerColumnProxy;

    move-object v0, p0

    goto :goto_0
.end method

.method public getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2
    .parameter "createIfMissing"

    .prologue
    .line 470
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 471
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 472
    new-instance v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0           #column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 473
    .restart local v0       #column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 475
    :cond_0
    return-object v0
.end method

.method public getPreselectedRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRow(II)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 4
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 457
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 464
    .end local p0
    :goto_0
    return-object v2

    .line 460
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Lti/modules/titanium/ui/PickerColumnProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 461
    .local v1, rowArray:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge p2, v2, :cond_1

    aget-object v2, v1, p2

    instance-of v2, v2, Lti/modules/titanium/ui/PickerRowProxy;

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v3

    .line 462
    goto :goto_0

    .line 464
    :cond_2
    aget-object p0, v1, p2

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerRowProxy;

    move-object v2, p0

    goto :goto_0
.end method

.method public getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 5
    .parameter "columnIndex"

    .prologue
    const/4 v4, 0x0

    .line 326
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    const-string v2, "PickerProxy"

    const-string v3, "Cannot get selected row in date/time or countdown picker."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 340
    :goto_0
    return-object v2

    .line 330
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v2, :cond_1

    move-object v2, v4

    .line 331
    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    .line 334
    .local v0, row:Lti/modules/titanium/ui/PickerRowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->getSelectedRowIndex(I)I

    move-result v1

    .line 336
    .local v1, rowIndex:I
    if-ltz v1, :cond_2

    .line 337
    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v0

    .end local v1           #rowIndex:I
    :cond_2
    move-object v2, v0

    .line 340
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    return v0
.end method

.method public getUseSpinner()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "dict"

    .prologue
    const-string v1, "useSpinner"

    const-string v3, "type"

    const-string v2, "columns"

    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    const-string v0, "useSpinner"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "useSpinner"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 70
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 73
    :cond_1
    const-string v0, "columns"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "columns"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->setColumns(Ljava/lang/Object;)V

    .line 76
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 247
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 249
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 250
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 251
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 252
    goto :goto_0

    .line 255
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 256
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 258
    goto :goto_0

    .line 261
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 262
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 264
    goto :goto_0

    .line 267
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 268
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 269
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 270
    goto :goto_0

    .line 273
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    move v1, v3

    .line 274
    goto :goto_0

    .line 277
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    move v1, v3

    .line 278
    goto :goto_0

    .line 281
    :pswitch_6
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    move v1, v3

    .line 282
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    const/16 v0, 0x838

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 715
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 716
    return-void
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 733
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireRowChange(II)V

    .line 734
    return-void
.end method

.method public rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "oldRowIndex"

    .prologue
    .line 721
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 722
    return-void
.end method

.method public rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 2
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 739
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 740
    .local v0, columnIndex:I
    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireSelectionChange(II)V

    .line 741
    return-void
.end method

.method public rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 727
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 728
    return-void
.end method

.method public setColumns(Ljava/lang/Object;)V
    .locals 2
    .parameter "passedColumns"

    .prologue
    .line 360
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string v0, "PickerProxy"

    const-string v1, "Cannot set columns in date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 365
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_2
    const/16 v0, 0x836

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/PickerProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSelectedRow(IIZ)V
    .locals 4
    .parameter "column"
    .end parameter
    .parameter "row"
    .end parameter
    .parameter "animated"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "PickerProxy"

    const-string v3, "Selecting row in date/time or countdown picker is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 296
    .local v1, view:Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_4

    .line 298
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 301
    :cond_1
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_2

    .line 302
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-lt v2, v3, :cond_3

    .line 305
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 307
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    goto :goto_0

    .line 315
    :cond_5
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 316
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "column"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "row"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "animated"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const/16 v2, 0x835

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/ui/PickerProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 164
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to change picker type after view has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot change the picker type after it has been rendered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iput p1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 169
    return-void
.end method

.method public setUseSpinner(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 141
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "PickerProxy"

    const-string v3, "Attempt to change useSpinner property after view has already been created. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void

    .line 144
    :cond_1
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 145
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 147
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v2, :cond_2

    .line 148
    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    goto :goto_0
.end method

.method public showDatePickerDialog(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)V
    .locals 13
    .parameter "invocation"
    .parameter "args"

    .prologue
    .line 484
    new-instance v11, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v11}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 485
    .local v11, settings:Lorg/appcelerator/kroll/KrollDict;
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 486
    .local v9, callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;
    array-length v2, p2

    if-lez v2, :cond_0

    .line 487
    const/4 v2, 0x0

    aget-object v11, p2, v2

    .end local v11           #settings:Lorg/appcelerator/kroll/KrollDict;
    check-cast v11, Lorg/appcelerator/kroll/KrollDict;

    .line 489
    .restart local v11       #settings:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 490
    .local v7, calendar:Ljava/util/Calendar;
    const-string v2, "value"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    const-string v2, "value"

    invoke-static {v11, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 494
    :cond_1
    const-string v2, "callback"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    const-string v2, "callback"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 496
    .local v12, typeTest:Ljava/lang/Object;
    instance-of v2, v12, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v2, :cond_6

    .line 497
    move-object v0, v12

    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v8, v0

    .line 504
    .end local v12           #typeTest:Ljava/lang/Object;
    .local v8, callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :goto_0
    const/4 v3, 0x0

    .line 505
    .local v3, dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    const/4 v10, 0x0

    .line 506
    .local v10, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v8, :cond_2

    .line 507
    new-instance v3, Lti/modules/titanium/ui/PickerProxy$1;

    .end local v3           #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-direct {v3, p0, v8, v9}, Lti/modules/titanium/ui/PickerProxy$1;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/titanium/kroll/KrollCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 526
    .restart local v3       #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v10, Lti/modules/titanium/ui/PickerProxy$2;

    .end local v10           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-direct {v10, p0, v9, v8}, Lti/modules/titanium/ui/PickerProxy$2;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    .line 541
    .restart local v10       #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :cond_2
    new-instance v1, Landroid/app/DatePickerDialog;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 548
    .local v1, dialog:Landroid/app/DatePickerDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 549
    if-eqz v10, :cond_3

    .line 550
    invoke-virtual {v1, v10}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 552
    :cond_3
    const-string v2, "title"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 553
    const-string v2, "title"

    invoke-static {v11, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 555
    :cond_4
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 556
    const-string v2, "okButtonTitle"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 557
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "okButtonTitle"

    .end local v3           #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v11, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_5
    return-void

    .line 499
    .end local v1           #dialog:Landroid/app/DatePickerDialog;
    .end local v8           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    .end local v10           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .restart local v12       #typeTest:Ljava/lang/Object;
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    goto :goto_0

    .line 502
    .end local v8           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    .end local v12           #typeTest:Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x0

    .restart local v8       #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    goto :goto_0
.end method

.method public showTimePickerDialog(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)V
    .locals 13
    .parameter "invocation"
    .parameter "args"

    .prologue
    .line 567
    new-instance v11, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v11}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 568
    .local v11, settings:Lorg/appcelerator/kroll/KrollDict;
    const/4 v6, 0x0

    .line 569
    .local v6, is24HourView:Z
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 570
    .local v9, callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;
    array-length v2, p2

    if-lez v2, :cond_0

    .line 571
    const/4 v2, 0x0

    aget-object v11, p2, v2

    .end local v11           #settings:Lorg/appcelerator/kroll/KrollDict;
    check-cast v11, Lorg/appcelerator/kroll/KrollDict;

    .line 573
    .restart local v11       #settings:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v2, "format24"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    const-string v2, "format24"

    invoke-static {v11, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v6

    .line 576
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 577
    .local v7, calendar:Ljava/util/Calendar;
    const-string v2, "value"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 578
    const-string v2, "value"

    invoke-static {v11, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 581
    :cond_2
    const-string v2, "callback"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 582
    const-string v2, "callback"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 583
    .local v12, typeTest:Ljava/lang/Object;
    instance-of v2, v12, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v2, :cond_7

    .line 584
    move-object v0, v12

    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v8, v0

    .line 591
    .end local v12           #typeTest:Ljava/lang/Object;
    .local v8, callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :goto_0
    const/4 v3, 0x0

    .line 592
    .local v3, timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    const/4 v10, 0x0

    .line 593
    .local v10, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v8, :cond_3

    .line 594
    new-instance v3, Lti/modules/titanium/ui/PickerProxy$3;

    .end local v3           #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-direct {v3, p0, v8, v9}, Lti/modules/titanium/ui/PickerProxy$3;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/titanium/kroll/KrollCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 612
    .restart local v3       #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v10, Lti/modules/titanium/ui/PickerProxy$4;

    .end local v10           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-direct {v10, p0, v9, v8}, Lti/modules/titanium/ui/PickerProxy$4;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    .line 627
    .restart local v10       #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :cond_3
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0xb

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 633
    .local v1, dialog:Landroid/app/TimePickerDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->setCancelable(Z)V

    .line 634
    if-eqz v10, :cond_4

    .line 635
    invoke-virtual {v1, v10}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 637
    :cond_4
    const-string v2, "title"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 638
    const-string v2, "title"

    invoke-static {v11, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    :cond_5
    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    .line 641
    const-string v2, "okButtonTitle"

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "okButtonTitle"

    .end local v3           #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v11, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_6
    return-void

    .line 586
    .end local v1           #dialog:Landroid/app/TimePickerDialog;
    .end local v8           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    .end local v10           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .restart local v12       #typeTest:Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x0

    .restart local v8       #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    goto :goto_0

    .line 589
    .end local v8           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    .end local v12           #typeTest:Ljava/lang/Object;
    :cond_8
    const/4 v8, 0x0

    .restart local v8       #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    goto :goto_0
.end method
