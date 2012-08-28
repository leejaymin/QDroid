.class public Lnet/londatiga/android/PopupWindows;
.super Ljava/lang/Object;
.source "PopupWindows.java"


# instance fields
.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field protected mContext:Landroid/content/Context;

.field protected mRootView:Landroid/view/View;

.field protected mWindow:Landroid/widget/PopupWindow;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    .line 38
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lnet/londatiga/android/PopupWindows$1;

    invoke-direct {v1, p0}, Lnet/londatiga/android/PopupWindows$1;-><init>(Lnet/londatiga/android/PopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 51
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 50
    iput-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 139
    return-void
.end method

.method protected onDismiss()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected preShow()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 70
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    const-string v1, "setContentView was not called with a view to display."

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lnet/londatiga/android/PopupWindows;->onShow()V

    .line 76
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 82
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 83
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 84
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 85
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 88
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 97
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 119
    iget-object v1, p0, Lnet/londatiga/android/PopupWindows;->mContext:Landroid/content/Context;

    .line 120
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    .local v0, inflator:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/londatiga/android/PopupWindows;->setContentView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 107
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows;->mRootView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 131
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 132
    return-void
.end method
