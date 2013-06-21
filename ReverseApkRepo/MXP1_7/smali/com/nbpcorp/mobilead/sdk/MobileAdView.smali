.class public final Lcom/nbpcorp/mobilead/sdk/MobileAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static 弱밧:Lcom/nbpcorp/mobilead/sdk/m;

.field public static 癤욱븳援:Z


# instance fields
.field private ㅼ꽑嫄:Lry;

.field private 궗:Landroid/content/Context;

.field private 대쫫:I

.field private 먯꽌:Lsj;

.field private 쇰뒗:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄:Lry;

    iput v6, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->쇰뒗:I

    iput v6, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    const-string v0, ""

    if-eqz p2, :cond_6

    move v5, v6

    move v3, v6

    move v4, v6

    move v1, v6

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-lt v5, v7, :cond_0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v0, v3}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_0
    invoke-interface {p2, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "channel_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p2, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :cond_1
    const-string v8, "test"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p2, v5, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move v4, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v3}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    move v3, v6

    move v4, v6

    move v1, v6

    goto :goto_1
.end method

.method public static synthetic 弱밧()Lcom/nbpcorp/mobilead/sdk/m;
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    return-object v0
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    return-object v0
.end method

.method private 癤욱븳援(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄:Lry;

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->쇰뒗()V

    const-class v1, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nbpcorp/mobilead/sdk/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_1
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->addView(Landroid/view/View;)V

    new-instance v0, Lsj;

    invoke-direct {v0, p0}, Lsj;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdView;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->먯꽌:Lsj;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private 癤욱븳援(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;)V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Ljava/lang/String;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;)V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Ljava/lang/String;)V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p3}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Z)V

    return-void
.end method

.method private 癤욱븳援(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Landroid/content/Context;)V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Z)V

    return-void
.end method

.method private 쇰뒗()V
    .locals 3

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission is not set"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChannelID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧()I

    move-result v0

    return v0
.end method

.method public getWebViewRenderPriority()Landroid/webkit/WebSettings$RenderPriority;
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗()Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    sget-object v1, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v1}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌()I

    move-result v1

    sget-object v2, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v2}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/nbpcorp/mobilead/sdk/m;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v4, 0x43a0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->쇰뒗:I

    const/high16 v0, 0x4248

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    invoke-virtual {v0, v3}, Lcom/nbpcorp/mobilead/sdk/m;->궗(I)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v2, v0}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(I)V

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    invoke-virtual {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->setMeasuredDimension(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget-boolean v5, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v5, :cond_0

    const-string v5, "NBPMOBILEAD"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MeasureSpec-Width("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->쇰뒗:I

    :cond_2
    if-eqz v4, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    :cond_4
    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->쇰뒗:I

    if-lt v2, v3, :cond_5

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->대쫫:I

    if-ge v0, v2, :cond_6

    :cond_5
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(Z)V

    :goto_1
    return-void

    :sswitch_0
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :sswitch_1
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(Z)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄:Lry;

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lry;)V

    :cond_0
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, v2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->먯꽌:Lsj;

    invoke-virtual {v0}, Lsj;->癤욱븳援()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, v2}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Z)V

    :cond_2
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->먯꽌:Lsj;

    invoke-virtual {v0}, Lsj;->궗()V

    goto :goto_0
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lry;)V
    .locals 1

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄:Lry;

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lry;)V

    return-void
.end method

.method public setTest(Z)V
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Z)V

    return-void
.end method

.method public setThreadPriority(I)V
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(I)V

    return-void
.end method

.method public setWebViewRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Landroid/webkit/WebSettings$RenderPriority;)V

    return-void
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/m;->궗()Z

    move-result v0

    return v0
.end method

.method public 癤욱븳援()V
    .locals 2

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    return-void
.end method

.method public 궗()V
    .locals 2

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧:Lcom/nbpcorp/mobilead/sdk/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Z)V

    return-void
.end method

.method public 먯꽌()V
    .locals 1

    invoke-virtual {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->removeAllViews()V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->먯꽌:Lsj;

    invoke-virtual {v0}, Lsj;->궗()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄:Lry;

    return-void
.end method
