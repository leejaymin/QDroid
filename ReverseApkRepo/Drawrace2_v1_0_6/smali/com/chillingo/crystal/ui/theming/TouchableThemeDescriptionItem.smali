.class public Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;
    }
.end annotation


# instance fields
.field private mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

.field private mTouchableRect:Landroid/graphics/Rect;

.field private mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->NotDefined:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    iput-object p1, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "button"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v4}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v4

    const-string v5, "switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    if-ne v3, v1, :cond_4

    sget-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Button:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_1

    sget-object v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    goto :goto_2
.end method


# virtual methods
.method public baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    return-object v0
.end method

.method public currentFrame()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v4

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    return-object v0
.end method

.method public setScaleFactors(FF)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mBaseItem:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public touchableType()Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->mTouchableType:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    return-object v0
.end method
