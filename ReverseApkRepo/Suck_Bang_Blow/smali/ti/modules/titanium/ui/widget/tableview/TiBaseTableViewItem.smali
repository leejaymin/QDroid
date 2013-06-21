.class public abstract Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.super Landroid/view/ViewGroup;
.source "TiBaseTableViewItem.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiBaseTableViewItem"

.field private static checkIndicatorBitmap:Landroid/graphics/Bitmap;

.field private static childIndicatorBitmap:Landroid/graphics/Bitmap;


# instance fields
.field protected className:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field protected tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

.field protected tiContext:Lorg/appcelerator/titanium/TiContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->DBG:Z

    .line 37
    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 38
    sput-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 3
    .parameter "tiContext"

    .prologue
    const-class v1, Lorg/appcelerator/kroll/KrollDict;

    .line 47
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 51
    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 52
    :cond_0
    const-class v1, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 56
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more.png"

    .line 57
    .local v0, path:Ljava/lang/String;
    sget v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    sparse-switch v2, :sswitch_data_0

    .line 61
    :goto_0
    const-class v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 63
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 64
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on.png"

    .line 65
    .restart local v0       #path:Ljava/lang/String;
    sget v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    sparse-switch v2, :sswitch_data_1

    .line 69
    :goto_1
    const-class v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 71
    .end local v0           #path:Ljava/lang/String;
    :cond_2
    monitor-exit v1

    .line 73
    :cond_3
    return-void

    .line 58
    .restart local v0       #path:Ljava/lang/String;
    :sswitch_0
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more_48.png"

    goto :goto_0

    .line 59
    :sswitch_1
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_more_18.png"

    goto :goto_0

    .line 66
    :sswitch_2
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_48.png"

    goto :goto_1

    .line 67
    :sswitch_3
    const-string v0, "/org/appcelerator/titanium/res/drawable/btn_check_buttonless_on_1ow 8.png"

    goto :goto_1

    .line 71
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch

    .line 65
    :sswitch_data_1
    .sparse-switch
        0x78 -> :sswitch_3
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x0

    .line 96
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "TiBaseTableViewItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v5

    .line 100
    goto :goto_0

    .line 101
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v5

    .line 103
    goto :goto_0
.end method


# virtual methods
.method public createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->checkIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->childIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "d"
    .parameter "property"

    .prologue
    .line 132
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClickedViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public hasSelector()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "url"

    .prologue
    .line 117
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 120
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tfh:Lorg/appcelerator/titanium/util/TiFileHelper;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->handler:Landroid/os/Handler;

    .line 174
    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 175
    return-void
.end method

.method public setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "d"
    .parameter "drawable"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 138
    const-string v2, "backgroundSelectedImage"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "backgroundSelectedColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 141
    .local v0, stateDrawable:Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 142
    .local v1, transparent:Landroid/graphics/drawable/ColorDrawable;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 146
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 147
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    new-array v2, v4, [I

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .end local v0           #stateDrawable:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #transparent:Landroid/graphics/drawable/ColorDrawable;
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 142
    :array_0
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 147
    :array_1
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public setBackgroundFromProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "props"

    .prologue
    const-string v5, "opacity"

    const-string v4, "backgroundImage"

    const-string v3, "backgroundColor"

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const-string v2, "backgroundImage"

    invoke-virtual {p0, p1, v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getBackgroundImageDrawable(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    const-string v2, "opacity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "opacity"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V

    .line 169
    :cond_1
    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setBackgroundDrawable(Lorg/appcelerator/kroll/KrollDict;Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void

    .line 162
    :cond_2
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "backgroundColor"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    .local v1, bgColor:Ljava/lang/Integer;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 128
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->className:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public abstract setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
.end method
