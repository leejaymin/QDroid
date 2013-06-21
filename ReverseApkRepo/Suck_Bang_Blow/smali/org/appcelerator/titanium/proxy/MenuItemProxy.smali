.class public Lorg/appcelerator/titanium/proxy/MenuItemProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuItemProxy.java"


# instance fields
.field private item:Landroid/view/MenuItem;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/view/MenuItem;)V
    .locals 0
    .parameter "tiContext"
    .parameter "item"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 27
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    .line 28
    return-void
.end method


# virtual methods
.method public getGroupId()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setCheckable(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "checkable"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 83
    return-object p0
.end method

.method public setChecked(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "checked"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 89
    return-object p0
.end method

.method public setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public setIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 5
    .parameter "icon"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 103
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, iconPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    new-instance v2, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->context:Lorg/appcelerator/titanium/TiContext;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 108
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 118
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #iconPath:Ljava/lang/String;
    .end local v2           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    :goto_0
    return-object p0

    .line 111
    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Lorg/appcelerator/titanium/TiContext;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 114
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "title"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 124
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "title"

    .prologue
    .line 129
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    return-object p0
.end method

.method public setVisible(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 1
    .parameter "visible"

    .prologue
    .line 135
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    return-object p0
.end method
