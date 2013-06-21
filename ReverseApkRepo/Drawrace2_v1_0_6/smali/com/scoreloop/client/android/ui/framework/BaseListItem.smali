.class public abstract Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.super Ljava/lang/Object;
.source "BaseListItem.java"


# instance fields
.field private final _context:Landroid/content/Context;

.field private _drawable:Landroid/graphics/drawable/Drawable;

.field private final _layoutInflater:Landroid/view/LayoutInflater;

.field private _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"
    .parameter "title"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_title:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_layoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public abstract getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isEnabled()Z
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->_title:Ljava/lang/String;

    .line 58
    return-void
.end method
