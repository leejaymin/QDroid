.class public Lcom/tapfortap/AdView;
.super Landroid/widget/LinearLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapfortap/AdView$FillAdsTask;,
        Lcom/tapfortap/AdView$RefreshTimerTask;,
        Lcom/tapfortap/AdView$AdViewListener;,
        Lcom/tapfortap/AdView$Gender;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tapfortap.AdView"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private age:I

.field private appId:Ljava/lang/String;

.field private gender:Lcom/tapfortap/AdView$Gender;

.field private listener:Lcom/tapfortap/AdView$AdViewListener;

.field private location:Landroid/location/Location;

.field private refreshTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;

    .line 67
    sget-object v0, Lcom/tapfortap/AdView$Gender;->NONE:Lcom/tapfortap/AdView$Gender;

    iput-object v0, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapfortap/AdView;->setOrientation(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;

    .line 74
    sget-object v0, Lcom/tapfortap/AdView$Gender;->NONE:Lcom/tapfortap/AdView$Gender;

    iput-object v0, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapfortap/AdView;->setOrientation(I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/tapfortap/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapfortap/AdView;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tapfortap/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView;->loadAdsWithAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tapfortap/AdView;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView;->displayAds(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tapfortap/AdView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tapfortap/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView;->openReferralUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tapfortap/AdView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tapfortap/AdView;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tapfortap/AdView;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView;->decodeUrlEncodedBody(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private decodeUrlEncodedBody(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "&"

    invoke-static {p1, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, parts:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 297
    .local v6, part:Ljava/lang/String;
    const-string v9, "="

    invoke-static {v6, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, pair:[Ljava/lang/String;
    array-length v9, v5

    if-lez v9, :cond_1

    const/4 v9, 0x0

    aget-object v3, v5, v9

    .line 299
    .local v3, key:Ljava/lang/String;
    :goto_1
    array-length v9, v5

    if-le v9, v11, :cond_2

    aget-object v8, v5, v11

    .line 300
    .local v8, value:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 302
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v3           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 299
    .restart local v3       #key:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_2

    .line 309
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #part:Ljava/lang/String;
    :cond_3
    return-object v1

    .line 304
    .restart local v3       #key:Ljava/lang/String;
    .restart local v5       #pair:[Ljava/lang/String;
    .restart local v6       #part:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private displayAds(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x1

    .line 193
    iget-object v7, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 194
    iget-object v7, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 195
    .local v3, button:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 198
    .end local v3           #button:Landroid/widget/ImageView;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    .line 200
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getWidth()I

    move-result v6

    .line 201
    .local v6, totalWidth:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    div-int v2, v6, v7

    .line 202
    .local v2, adWidth:I
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getHeight()I

    move-result v1

    .line 203
    .local v1, adHeight:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 204
    .local v0, ad:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 205
    .local v4, i:I
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .restart local v3       #button:Landroid/widget/ImageView;
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 207
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 208
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    new-instance v7, Lcom/tapfortap/AdView$3;

    invoke-direct {v7, p0, v0}, Lcom/tapfortap/AdView$3;-><init>(Lcom/tapfortap/AdView;Ljava/util/Map;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v7, p0, Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p0, v3}, Lcom/tapfortap/AdView;->addView(Landroid/view/View;)V

    .line 230
    const-string v7, "image_url"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, v4}, Lcom/tapfortap/AdView;->getImage(Ljava/lang/String;I)V

    goto :goto_1

    .line 232
    .end local v0           #ad:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #button:Landroid/widget/ImageView;
    .end local v4           #i:I
    :cond_1
    return-void
.end method

.method private getAdCoordinates()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 169
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    .end local v0           #bounds:Landroid/graphics/Rect;
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "(unknown)"

    goto :goto_0
.end method

.method private getAdDimensions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdOpacity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 179
    .local v0, opacity:I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 180
    const-string v1, "0.00"

    .line 189
    .end local v0           #opacity:I
    :goto_0
    return-object v1

    .line 181
    .restart local v0       #opacity:I
    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 182
    const-string v1, "0.50"

    goto :goto_0

    .line 183
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 184
    const-string v1, "1.00"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0           #opacity:I
    :catch_0
    move-exception v1

    .line 189
    :cond_2
    const-string v1, "(unknown)"

    goto :goto_0
.end method

.method private getAgeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget v0, p0, Lcom/tapfortap/AdView;->age:I

    if-lez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapfortap/AdView;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getDeviceInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tapfortap/TapForTap;->getDeviceInfo(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, deviceInfo:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device[age]"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getAgeString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device[gender]"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getGenderString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device[location]"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getLocationString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-object v0
.end method

.method private getGenderString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    sget-object v1, Lcom/tapfortap/AdView$Gender;->MALE:Lcom/tapfortap/AdView$Gender;

    if-ne v0, v1, :cond_0

    .line 335
    const-string v0, "m"

    .line 340
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    sget-object v1, Lcom/tapfortap/AdView$Gender;->FEMALE:Lcom/tapfortap/AdView$Gender;

    if-ne v0, v1, :cond_1

    .line 338
    const-string v0, "f"

    goto :goto_0

    .line 340
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getImage(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "index"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapfortap/AdView$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapfortap/AdView$4;-><init>(Lcom/tapfortap/AdView;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 255
    return-void
.end method

.method private getLocationString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tapfortap/AdView;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "%1.9f,%1.9f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapfortap/AdView;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tapfortap/AdView;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getNetwork()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 148
    const-string v3, "offline"

    .line 158
    :goto_0
    return-object v3

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 151
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 152
    const-string v3, "wifi"

    goto :goto_0

    .line 154
    :cond_1
    if-nez v2, :cond_2

    .line 155
    const-string v3, "cell"

    goto :goto_0

    .line 158
    :cond_2
    const-string v3, "unknown"

    goto :goto_0
.end method

.method private getRefreshTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private getTimeBlock()Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isWeekday()Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x1

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 314
    .local v0, day:I
    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWorkHours()Z
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 319
    .local v0, hour:I
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAdsWithAppId(Ljava/lang/String;)V
    .locals 5
    .parameter "appId"

    .prologue
    const/4 v3, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;

    const-string v2, "Cannot load ads without a Tap for Tap ID"

    invoke-interface {v1, v2}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v1, "com.tapfortap.AdView"

    const-string v2, "Cannot load ads without a Tap for Tap ID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 117
    iput-object v3, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    .line 120
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/tapfortap/AdView$RefreshTimerTask;

    invoke-direct {v2, p0, v3}, Lcom/tapfortap/AdView$RefreshTimerTask;-><init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "app_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "weekday"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->isWeekday()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_1
    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "work_hours"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->isWorkHours()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "true"

    :goto_2
    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "time_block"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getTimeBlock()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "dimensions"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getAdDimensions()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "coordinates"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getAdCoordinates()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "opacity"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getAdOpacity()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "network"

    invoke-direct {p0}, Lcom/tapfortap/AdView;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getDeviceInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object v1, p0, Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tapfortap/AdView$2;

    invoke-direct {v2, p0, v0}, Lcom/tapfortap/AdView$2;-><init>(Lcom/tapfortap/AdView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    const-string v1, "false"

    goto :goto_1

    .line 128
    :cond_4
    const-string v1, "false"

    goto :goto_2
.end method

.method private openReferralUrl(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, connection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 261
    .local v5, responseCode:I
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 262
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 263
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 264
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 270
    :goto_0
    const/16 v6, 0x12e

    if-ne v5, v6, :cond_0

    .line 271
    const-string v6, "Location"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, location:Ljava/lang/String;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tapfortap/AdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #location:Ljava/lang/String;
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Ljava/io/IOException;
    const-string v6, "com.tapfortap.AdView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #location:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 277
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "com.tapfortap.AdView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 281
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #location:Ljava/lang/String;
    :cond_0
    const-string v6, "com.tapfortap.AdView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/tapfortap/AdView;->age:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tapfortap/AdView;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/tapfortap/AdView$Gender;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    return-object v0
.end method

.method public getListener()Lcom/tapfortap/AdView$AdViewListener;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tapfortap/AdView;->location:Landroid/location/Location;

    return-object v0
.end method

.method public loadAds()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/tapfortap/AdView$1;

    invoke-direct {v1, p0}, Lcom/tapfortap/AdView$1;-><init>(Lcom/tapfortap/AdView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .parameter "age"

    .prologue
    .line 372
    iput p1, p0, Lcom/tapfortap/AdView;->age:I

    .line 373
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/tapfortap/AdView;->appId:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setGender(Lcom/tapfortap/AdView$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/tapfortap/AdView;->gender:Lcom/tapfortap/AdView$Gender;

    .line 381
    return-void
.end method

.method public setListener(Lcom/tapfortap/AdView$AdViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;

    .line 397
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/tapfortap/AdView;->location:Landroid/location/Location;

    .line 389
    return-void
.end method

.method public stopLoadingAds()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapfortap/AdView;->refreshTimer:Ljava/util/Timer;

    .line 100
    :cond_0
    return-void
.end method
