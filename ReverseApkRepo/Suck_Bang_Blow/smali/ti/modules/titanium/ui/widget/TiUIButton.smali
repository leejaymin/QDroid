.class public Lti/modules/titanium/ui/widget/TiUIButton;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIButton.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIButton"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIButton;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 37
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIButton;->DBG:Z

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "TiUIButton"

    const-string v2, "Creating a button"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIButton$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUIButton$1;-><init>(Lti/modules/titanium/ui/widget/TiUIButton;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 54
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 55
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 56
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIButton;->setNativeView(Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 133
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .parameter "d"

    .prologue
    const/4 v11, 0x0

    const-string v9, "image"

    const-string v13, "font"

    const-string v12, "color"

    .line 62
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 64
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, btn:Landroid/widget/Button;
    const-string v8, "image"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    const-string v8, "image"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, value:Ljava/lang/Object;
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v8

    const/4 v9, 0x0

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {v8, v9, v6}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v3

    .line 71
    .local v3, file:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #file:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    const-string v8, "color"

    invoke-virtual {p1, v12}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    const-string v8, "color"

    invoke-static {p1, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    :cond_2
    const-string v8, "font"

    invoke-virtual {p1, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    const-string v8, "font"

    invoke-virtual {p1, v13}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 88
    :cond_3
    const-string v8, "textAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    const-string v8, "textAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, textAlign:Ljava/lang/String;
    invoke-static {v1, v4, v11}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v4           #textAlign:Ljava/lang/String;
    :cond_4
    const-string v8, "verticalAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 93
    const-string v8, "verticalAlign"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, verticalAlign:Ljava/lang/String;
    invoke-static {v1, v11, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v7           #verticalAlign:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 97
    return-void

    .line 74
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 75
    .local v2, e:Ljava/io/IOException;
    const-string v8, "TiUIButton"

    const-string v9, "Error setting button image"

    invoke-static {v8, v9, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIButton;->DBG:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "TiUIButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, btn:Landroid/widget/Button;
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    return-void

    .line 108
    .restart local p3
    :cond_1
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "font"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 112
    .restart local p3
    :cond_3
    const-string v1, "textAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    goto :goto_0

    .line 115
    :cond_4
    const-string v1, "verticalAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    goto :goto_0

    .line 119
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public setOpacity(F)V
    .locals 1
    .parameter "opacity"

    .prologue
    .line 125
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setPaintOpacity(Landroid/graphics/Paint;F)V

    .line 126
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 127
    return-void
.end method
