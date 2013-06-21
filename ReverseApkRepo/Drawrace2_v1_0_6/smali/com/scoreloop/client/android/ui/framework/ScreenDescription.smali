.class public Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.super Ljava/lang/Object;
.source "ScreenDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;
    }
.end annotation


# instance fields
.field private final _bodyDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ActivityDescription;",
            ">;"
        }
    .end annotation
.end field

.field private _headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

.field private final _screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _selectedBodyIndex:I

.field private final _shortcutDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;",
            ">;"
        }
    .end annotation
.end field

.field private _shortcutObserver:Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;

.field private _shortcutSelectionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_bodyDescriptions:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 38
    iput v1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_selectedBodyIndex:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutDescriptions:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutSelectionId:I

    return-void
.end method


# virtual methods
.method public addBodyDescription(ILandroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 2
    .parameter "tabId"
    .parameter "intent"

    .prologue
    .line 44
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    invoke-direct {v0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;-><init>(ILandroid/content/Intent;)V

    .line 45
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_bodyDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method public addShortcutDescription(III)V
    .locals 2
    .parameter "textId"
    .parameter "imageId"
    .parameter "activeImageId"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutDescriptions:Ljava/util/List;

    new-instance v1, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    invoke-direct {v1, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public addShortcutObserver(Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutObserver:Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;

    .line 55
    return-void
.end method

.method getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 3
    .parameter "id"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    invoke-virtual {v2, p1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->hasIdentfier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 66
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_bodyDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 62
    .local v0, bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->hasIdentfier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    .end local v0           #bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ActivityDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_bodyDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderDescription()Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    return-object v0
.end method

.method public getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method public getSelectedBodyIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_selectedBodyIndex:I

    return v0
.end method

.method public getShortcutDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getShortcutObserver()Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutObserver:Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;

    return-object v0
.end method

.method public getShortcutSelectionId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutSelectionId:I

    return v0
.end method

.method public getShortcutSelectionIndex()I
    .locals 4

    .prologue
    .line 98
    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutSelectionId:I

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutSelectionId:I

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutDescriptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getTextId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 106
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 100
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 1
    .parameter "intent"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addBodyDescription(ILandroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 2
    .parameter "intent"

    .prologue
    .line 114
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;-><init>(ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 115
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    return-object v0
.end method

.method public setSelectedBodyIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 119
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_selectedBodyIndex:I

    .line 120
    return-void
.end method

.method public setShortcutSelectionId(I)V
    .locals 0
    .parameter "selectionId"

    .prologue
    .line 123
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->_shortcutSelectionId:I

    .line 124
    return-void
.end method
