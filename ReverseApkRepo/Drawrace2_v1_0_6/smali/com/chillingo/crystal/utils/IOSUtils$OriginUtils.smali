.class public Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/utils/IOSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginUtils"
.end annotation


# static fields
.field private static final _backgroundPositionLandscape:Landroid/graphics/Rect;

.field private static final _backgroundPositionPortrait:Landroid/graphics/Rect;

.field private static final _navigationBarPositionLandscape:Landroid/graphics/Rect;

.field private static final _navigationBarPositionPortrait:Landroid/graphics/Rect;

.field private static final _statusInfoBarPositionLandscape:Landroid/graphics/Rect;

.field private static final _statusInfoBarPositionPortrait:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x1e0

    const/16 v1, 0x2d

    const/16 v3, 0x140

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionLandscape:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionPortrait:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x73

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionLandscape:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xa0

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionPortrait:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleAspectFill(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionLandscape:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static backgroundPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleAspectFill(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionPortrait:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_backgroundPositionPortrait:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static final statusBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionLandscape:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static final statusBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 6

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget-object v3, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionPortrait:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    sget-object v4, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionPortrait:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->_statusInfoBarPositionPortrait:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
