.class public Lti/modules/titanium/ui/widget/TiUILabel;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUILabel.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUILabel"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUILabel;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUILabel;->DBG:Z

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "TiUILabel"

    const-string v2, "Creating a text label"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, tv:Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUILabel;->setNativeView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method private linkifyIfEnabled(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "tv"
    .parameter "d"

    .prologue
    const-string v1, "autoLink"

    .line 94
    const-string v0, "autoLink"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "autoLink"

    invoke-static {p2, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    const-string v9, "highlightedColor"

    const-string v8, "font"

    const-string v7, "ellipsize"

    const-string v6, "color"

    .line 48
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 50
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, tv:Landroid/widget/TextView;
    const-string v3, "html"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 53
    const-string v3, "html"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 60
    :cond_0
    :goto_0
    const-string v3, "color"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "color"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :cond_1
    const-string v3, "highlightedColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const-string v3, "highlightedColor"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 66
    :cond_2
    const-string v3, "font"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    const-string v3, "font"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 69
    :cond_3
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, textAlign:Ljava/lang/String;
    invoke-static {v1, v0, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0           #textAlign:Ljava/lang/String;
    :cond_4
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, verticalAlign:Ljava/lang/String;
    invoke-static {v1, v5, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v2           #verticalAlign:Ljava/lang/String;
    :cond_5
    const-string v3, "ellipsize"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    const-string v3, "ellipsize"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 79
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    :cond_6
    :goto_1
    const-string v3, "wordWrap"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 85
    const-string v3, "wordWrap"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    :cond_7
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUILabel;->linkifyIfEnabled(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 89
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 90
    return-void

    .line 54
    :cond_8
    const-string v3, "text"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 55
    const-string v3, "text"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 56
    :cond_9
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    const-string v3, "title"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    :cond_a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 85
    :cond_b
    const/4 v3, 0x0

    goto :goto_2
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
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUILabel;->DBG:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "TiUILabel"

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
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, tv:Landroid/widget/TextView;
    const-string v1, "html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 108
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->linkifyIfEnabled(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 109
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 140
    .end local p3
    :goto_0
    return-void

    .line 110
    .restart local p3
    :cond_1
    const-string v1, "text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    :cond_2
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->linkifyIfEnabled(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 116
    .restart local p3
    :cond_4
    const-string v1, "highlightedColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto :goto_0

    .line 118
    .restart local p3
    :cond_5
    const-string v1, "textAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 121
    :cond_6
    const-string v1, "verticalAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 124
    :cond_7
    const-string v1, "font"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 126
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 127
    .restart local p3
    :cond_8
    const-string v1, "ellipsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 131
    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 133
    :cond_a
    const-string v1, "wordWrap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 134
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    .line 135
    :cond_c
    const-string v1, "autoLink"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 136
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto/16 :goto_0

    .line 138
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 143
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 144
    return-void
.end method
