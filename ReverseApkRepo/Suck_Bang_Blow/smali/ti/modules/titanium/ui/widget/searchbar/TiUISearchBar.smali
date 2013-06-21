.class public Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
.super Lti/modules/titanium/ui/widget/TiUIText;
.source "TiUISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;
    }
.end annotation


# instance fields
.field protected cancelBtn:Landroid/widget/ImageButton;

.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .parameter "proxy"

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0xf

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 36
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    .line 41
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    .line 42
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isFocusable()Z

    .line 43
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setId(I)V

    .line 44
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 45
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cancel.png"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 46
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 48
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 49
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    new-instance v4, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;

    invoke-direct {v4, p0, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 66
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 68
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v2, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setNativeView(Landroid/view/View;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 90
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "d"

    .prologue
    const-string v2, "showCancel"

    const-string v3, "barColor"

    .line 95
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 97
    const-string v1, "showCancel"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "showCancel"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, showCancel:Z
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    .end local v0           #showCancel:Z
    :cond_0
    :goto_1
    return-void

    .line 99
    .restart local v0       #showCancel:Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 100
    .end local v0           #showCancel:Z
    :cond_2
    const-string v1, "barColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    const-string v2, "barColor"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 108
    const-string v1, "showCancel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    .local v0, showCancel:Z
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 116
    .end local v0           #showCancel:Z
    :goto_1
    return-void

    .line 110
    .restart local v0       #showCancel:Z
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 111
    .end local v0           #showCancel:Z
    :cond_1
    const-string v1, "barColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 120
    return-void
.end method
