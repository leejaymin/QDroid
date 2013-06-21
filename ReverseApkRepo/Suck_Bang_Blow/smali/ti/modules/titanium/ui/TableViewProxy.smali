.class public Lti/modules/titanium/ui/TableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/TableViewProxy$RowResult;
    }
.end annotation


# static fields
.field public static final CLASSNAME_DEFAULT:Ljava/lang/String; = "__default__"

.field public static final CLASSNAME_HEADER:Ljava/lang/String; = "__header__"

.field public static final CLASSNAME_NORMAL:Ljava/lang/String; = "__normal__"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final INSERT_ROW_AFTER:I = 0x1

.field private static final INSERT_ROW_BEFORE:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TableViewProxy"

.field private static final MSG_APPEND_ROW:I = 0x1b5d

.field private static final MSG_DELETE_ROW:I = 0x1b5b

.field private static final MSG_INSERT_ROW:I = 0x1b5c

.field private static final MSG_SCROLL_TO_INDEX:I = 0x1b59

.field private static final MSG_SET_DATA:I = 0x1b5a

.field private static final MSG_UPDATE_VIEW:I = 0x1b58


# instance fields
.field private localSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TableViewProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/KrollEventManager;->addOnEventChangeListener(Lorg/appcelerator/titanium/bridge/OnEventListenerChange;)V

    .line 60
    return-void
.end method

.method private addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 6
    .parameter "row"
    .parameter "currentSection"

    .prologue
    const-string v5, "footer"

    const-string v4, "header"

    .line 301
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 302
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 303
    .local v0, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz p2, :cond_0

    const-string v2, "header"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v0           #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 308
    .restart local v0       #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    :goto_0
    const-string v2, "header"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const-string v2, "headerTitle"

    const-string v3, "header"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_1
    const-string v2, "footer"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    const-string v2, "footerTitle"

    const-string v3, "footer"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_2
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->add(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 315
    return-object v0

    .line 306
    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method private handleAppendRow(Ljava/lang/Object;)V
    .locals 7
    .parameter "row"

    .prologue
    const/4 v6, 0x1

    .line 147
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v3

    .line 148
    .local v3, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v4

    .line 149
    .local v4, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 150
    new-array v1, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    .line 151
    .local v1, data:[Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 161
    .end local v1           #data:[Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 162
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 163
    return-void

    .line 153
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 154
    .local v2, lastSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {p0, v3, v2}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 155
    .local v0, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 156
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    const-string v5, "section"

    invoke-virtual {v3, v5, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v5, "parent"

    invoke-virtual {v3, v5, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleDeleteRow(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 183
    new-instance v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 184
    .local v0, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v2, v0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->removeRowAt(I)V

    .line 186
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 192
    return-void

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Non-existant row at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleInsertRowAfter(ILjava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "data"

    .prologue
    .line 269
    new-instance v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 270
    .local v1, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 273
    .local v0, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v3, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 275
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 280
    return-void

    .line 277
    .end local v0           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of range. Non-existant row at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleInsertRowBefore(ILjava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "data"

    .prologue
    .line 232
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 233
    if-gez p1, :cond_0

    .line 234
    const/4 p1, 0x0

    .line 237
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 238
    .local v2, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 240
    .local v1, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v3, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v3, v4, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 250
    .end local v1           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 251
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 252
    return-void

    .line 242
    .restart local v2       #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of range. Non-existant row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    aput-object v4, v0, v3

    .line 248
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleSetData([Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 375
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 377
    :cond_0
    return-void
.end method

.method private locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z
    .locals 8
    .parameter "index"
    .parameter "rowResult"

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, found:Z
    const/4 v2, 0x0

    .line 408
    .local v2, rowCount:I
    const/4 v4, 0x0

    .line 410
    .local v4, sectionIndex:I
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 411
    .local v3, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRowCount()D

    move-result-wide v6

    double-to-int v5, v6

    .line 412
    .local v5, sectionRowCount:I
    add-int v6, v5, v2

    if-le v6, p1, :cond_1

    .line 413
    iput-object v3, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 414
    iput v4, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->sectionIndex:I

    .line 415
    invoke-virtual {v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v6

    sub-int v7, p1, v2

    aget-object v6, v6, v7

    iput-object v6, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->row:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 416
    sub-int v6, p1, v2

    iput v6, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 417
    const/4 v0, 0x1

    .line 426
    .end local v3           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v5           #sectionRowCount:I
    :cond_0
    return v0

    .line 420
    .restart local v3       #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local v5       #sectionRowCount:I
    :cond_1
    add-int/2addr v2, v5

    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 424
    goto :goto_0
.end method

.method private rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 5
    .parameter "row"

    .prologue
    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    instance-of v3, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_0

    .line 392
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v1, v0

    .line 393
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lti/modules/titanium/ui/TableViewRowProxy;

    .end local v2           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 394
    .restart local v2       #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v2, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 395
    const-string v3, "className"

    const-string v4, "__normal__"

    invoke-virtual {v2, v3, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string v3, "rowData"

    invoke-virtual {v2, v3, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    .end local v1           #d:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 402
    return-object v2

    .line 398
    :cond_0
    move-object v0, p1

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public appendRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "row"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 134
    .local v0, ctx:Lorg/appcelerator/titanium/TiContext;
    if-nez v0, :cond_0

    .line 135
    const-string v1, "TableViewProxy"

    const-string v2, "Context has been GC\'d, not appending row"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_1
    const/16 v1, 0x1b5d

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/ui/TableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 91
    new-instance v0, Lti/modules/titanium/ui/widget/TiUITableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUITableView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public deleteRow(ILorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "index"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 168
    .local v0, ctx:Lorg/appcelerator/titanium/TiContext;
    if-nez v0, :cond_0

    .line 169
    const-string v2, "TableViewProxy"

    const-string v3, "Context has been GC\'d, not deleting row."

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1b5b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 178
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 486
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 487
    const-string v6, "click"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne p3, p0, :cond_1

    .line 488
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 489
    .local v5, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 490
    .local v4, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v5           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 499
    const-string v6, "click"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p2, :cond_1

    if-ne p3, p0, :cond_1

    .line 500
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 501
    .local v5, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 502
    .local v4, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v5           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public getData()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 386
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIndexByName(Ljava/lang/String;)I
    .locals 10
    .parameter "name"

    .prologue
    .line 196
    const/4 v4, -0x1

    .line 197
    .local v4, index:I
    const/4 v3, 0x0

    .line 198
    .local v3, idx:I
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 200
    .local v8, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v7, v0, v2

    .line 201
    .local v7, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, rname:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    move v4, v3

    .line 208
    .end local v6           #rname:Ljava/lang/String;
    .end local v7           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    const/4 v9, -0x1

    if-le v4, v9, :cond_0

    .line 213
    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v8           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_2
    return v4

    .line 206
    .restart local v0       #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #rname:Ljava/lang/String;
    .restart local v7       #row:Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v8       #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 286
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .restart local v0       #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    iput-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 290
    :cond_0
    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/TiUITableView;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 96
    .local v0, ctx:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiUITableView;

    move-object v1, p0

    .line 99
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "dict"

    .prologue
    const-string v4, "data"

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, data:[Ljava/lang/Object;
    const-string v3, "data"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "data"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 68
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 69
    const-string v3, "data"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 76
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 446
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b58

    if-ne v3, v4, :cond_0

    .line 447
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 448
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 478
    :goto_0
    return v3

    .line 450
    .restart local p0
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b59

    if-ne v3, v4, :cond_1

    .line 451
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToIndex(I)V

    move v3, v5

    .line 452
    goto :goto_0

    .line 453
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b5a

    if-ne v3, v4, :cond_2

    .line 454
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 455
    .local v2, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 456
    .local v1, data:[Ljava/lang/Object;
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 458
    goto :goto_0

    .line 459
    .end local v1           #data:[Ljava/lang/Object;
    .end local v2           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b5c

    if-ne v3, v4, :cond_4

    .line 460
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 461
    .restart local v2       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_3

    .line 462
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 466
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 467
    goto :goto_0

    .line 464
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    goto :goto_1

    .line 468
    .end local v2           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b5d

    if-ne v3, v4, :cond_5

    .line 469
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 470
    .restart local v2       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 471
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 472
    goto :goto_0

    .line 473
    .end local v2           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b5b

    if-ne v3, v4, :cond_6

    .line 474
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(I)V

    move v3, v5

    .line 475
    goto/16 :goto_0

    .line 478
    :cond_6
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public insertRowAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 256
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 257
    .local v0, ctx:Lorg/appcelerator/titanium/TiContext;
    if-nez v0, :cond_0

    .line 258
    const-string v1, "TableViewProxy"

    const-string v2, "Context has been GC\'d, not inserting row."

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_1
    const/16 v1, 0x1b5c

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, v2, p1}, Lti/modules/titanium/ui/TableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;II)Ljava/lang/Object;

    goto :goto_0
.end method

.method public insertRowBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 218
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 219
    .local v0, ctx:Lorg/appcelerator/titanium/TiContext;
    if-nez v0, :cond_0

    .line 220
    const-string v1, "TableViewProxy"

    const-string v2, "Context has been GC\'d, not inserting row"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_1
    const/16 v1, 0x1b5c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Lti/modules/titanium/ui/TableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;II)Ljava/lang/Object;

    goto :goto_0
.end method

.method public processData([Ljava/lang/Object;)V
    .locals 10
    .parameter "data"

    .prologue
    const-string v9, "headerTitle"

    const-string v8, "footerTitle"

    .line 319
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v6

    .line 320
    .local v6, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v7, "headerTitle"

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    new-instance v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v2           #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    iget-object v7, p0, Lti/modules/titanium/ui/TableViewProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v2, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 325
    .restart local v2       #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v7, "headerTitle"

    const-string v7, "headerTitle"

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v9, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    :cond_0
    const-string v7, "footerTitle"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 329
    if-nez v2, :cond_1

    .line 330
    new-instance v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v2           #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    iget-object v7, p0, Lti/modules/titanium/ui/TableViewProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v2, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 331
    .restart local v2       #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    const-string v7, "footerTitle"

    const-string v7, "footerTitle"

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_7

    .line 337
    aget-object v4, p1, v3

    .line 338
    .local v4, o:Ljava/lang/Object;
    instance-of v7, v4, Lorg/appcelerator/kroll/KrollDict;

    if-nez v7, :cond_3

    instance-of v7, v4, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_6

    .line 339
    :cond_3
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v5

    .line 340
    .local v5, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {p0, v5, v2}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v1

    .line 341
    .local v1, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 342
    :cond_4
    move-object v2, v1

    .line 343
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v1           #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v5           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_6
    instance-of v7, v4, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v7, :cond_5

    .line 346
    move-object v0, v4

    check-cast v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    move-object v2, v0

    .line 347
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 351
    .end local v4           #o:Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 82
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 84
    .local v1, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->releaseViews()V

    goto :goto_0

    .line 87
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 439
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b59

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 441
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method

.method public setData([Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    .line 356
    .local v2, ctx:Lorg/appcelerator/titanium/TiContext;
    move-object v1, p1

    .line 357
    .local v1, actualData:[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    aget-object v3, p1, v4

    instance-of v3, v3, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 358
    aget-object v3, p1, v4

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 360
    :cond_0
    if-nez v2, :cond_1

    .line 361
    const-string v3, "TableViewProxy"

    const-string v4, "Context has been GC\'d, not setting table data."

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_2
    const/16 v3, 0x1b5a

    invoke-virtual {p0, v3, v1}, Lti/modules/titanium/ui/TableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateRow(Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "row"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v2, -0x1

    .line 106
    .local v2, rowIndex:I
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_2

    .line 107
    new-instance v4, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 108
    .local v4, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 109
    invoke-direct {p0, v2, v4}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    .line 110
    iget-object v5, v4, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 124
    .end local v4           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 125
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 126
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v7

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 127
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 129
    :cond_1
    return-void

    .line 111
    .restart local p1
    :cond_2
    instance-of v7, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_0

    .line 112
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v6

    .line 113
    .local v6, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 114
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/ui/TableViewSectionProxy;

    iget-object v3, v7, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 115
    .local v3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 116
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_3

    .line 117
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    check-cast v5, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 118
    .restart local v5       #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    move v2, v1

    .line 119
    goto :goto_0

    .line 115
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    const/16 v0, 0x1b58

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
