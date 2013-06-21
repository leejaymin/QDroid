.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
.super Landroid/graphics/drawable/Drawable;
.source "TiTableViewSelector.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiTableViewSelector"


# instance fields
.field protected bounds:Landroid/graphics/Rect;

.field protected defaultSelector:Landroid/graphics/drawable/Drawable;

.field protected listView:Landroid/widget/ListView;

.field protected selectedDrawable:Landroid/graphics/drawable/Drawable;

.field protected selectedPosition:I

.field protected selectedView:Landroid/view/View;

.field protected tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V
    .locals 2
    .parameter "tableView"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedPosition:I

    .line 44
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 45
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultSelector:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector$1;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 169
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 171
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 174
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 201
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected getSelectedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 142
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultSelector:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_2

    .line 143
    :cond_0
    const/4 v1, 0x0

    .line 144
    .local v1, setBounds:Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    if-nez v2, :cond_1

    iget v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedPosition:I

    if-ltz v2, :cond_1

    .line 145
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    iget v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedPosition:I

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    .line 146
    const/4 v1, 0x1

    .line 149
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    instance-of v2, v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    if-eqz v2, :cond_2

    .line 151
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 152
    .local v0, rowView:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->hasSelector()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    if-eqz v1, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->bounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 161
    .end local v0           #rowView:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .end local v1           #setBounds:Z
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 162
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultSelector:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public keyEvent(IILandroid/view/KeyEvent;)V
    .locals 10
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 83
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    .line 84
    .local v3, position:I
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 85
    .local v1, listCount:I
    sget-boolean v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->DBG:Z

    if-eqz v4, :cond_0

    .line 86
    const-string v4, "TiTableViewSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_1

    .line 90
    if-gez v3, :cond_2

    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 99
    :sswitch_0
    if-lez v1, :cond_1

    .line 100
    invoke-virtual {p0, v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_0

    .line 105
    :cond_2
    sub-int v0, v1, v9

    .line 106
    .local v0, finalPosition:I
    sparse-switch p1, :sswitch_data_1

    .line 127
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->refreshDrawableState()V

    goto :goto_0

    .line 108
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 109
    sub-int v4, v3, p2

    if-gez v4, :cond_3

    move v4, v8

    :goto_2
    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    sub-int v4, v3, p2

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p0, v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    .line 114
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 115
    add-int v4, v3, p2

    if-le v4, v0, :cond_5

    move v4, v0

    :goto_3
    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    add-int v4, v3, p2

    goto :goto_3

    .line 117
    :cond_6
    sub-int v4, v1, v9

    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    .line 120
    :sswitch_3
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, v4, v5

    .line 121
    .local v2, pageSize:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 122
    add-int v4, v3, v2

    if-le v4, v0, :cond_7

    move v4, v0

    :goto_4
    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    add-int v4, v3, v2

    goto :goto_4

    .line 124
    :cond_8
    sub-int v4, v3, v2

    if-gez v4, :cond_9

    move v4, v8

    :goto_5
    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setSelectedChild(Landroid/view/View;I)V

    goto :goto_1

    :cond_9
    sub-int v4, v3, v2

    goto :goto_5

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 106
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "what"
    .parameter "when"

    .prologue
    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 227
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 229
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->setBounds(Landroid/graphics/Rect;)V

    .line 233
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 235
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->bounds:Landroid/graphics/Rect;

    .line 236
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 239
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 240
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 245
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 246
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 242
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 243
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 248
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 249
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 251
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 252
    return-void
.end method

.method protected setSelectedChild(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "position"

    .prologue
    .line 133
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    .line 137
    iput p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedPosition:I

    .line 138
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->refreshDrawableState()V

    .line 139
    return-void
.end method

.method public setState([I)Z
    .locals 3
    .parameter "stateSet"

    .prologue
    .line 254
    sget-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->DBG:Z

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "TiTableViewSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 260
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected touchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 57
    sget-boolean v7, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->DBG:Z

    if-eqz v7, :cond_0

    .line 58
    const-string v7, "TiTableViewSelector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouch, x: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 61
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 62
    .local v6, y:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 63
    .local v1, first:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 66
    .local v3, last:I
    move v2, v1

    .local v2, i:I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 67
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v4, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    sub-int v8, v2, v1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 73
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    if-eq v7, v0, :cond_1

    .line 75
    const/4 v7, 0x0

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_1
    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedView:Landroid/view/View;

    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0           #child:Landroid/view/View;
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_3
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 266
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getSelectedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method
