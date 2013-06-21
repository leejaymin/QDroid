.class public Lti/modules/titanium/ui/widget/TiUIScrollView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUIScrollView"

.field private static final SHOW_HORIZONTAL_SCROLL_INDICATOR:Ljava/lang/String; = "showHorizontalScrollIndicator"

.field private static final SHOW_VERTICAL_SCROLL_INDICATOR:Ljava/lang/String; = "showVerticalScrollIndicator"

.field public static final TYPE_HORIZONTAL:I = 0x1

.field public static final TYPE_VERTICAL:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 248
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 249
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 250
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 355
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->requestLayout()V

    .line 357
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 361
    :cond_0
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, nativeView:Landroid/view/View;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v0           #nativeView:Landroid/view/View;
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .restart local v0       #nativeView:Landroid/view/View;
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v0           #nativeView:Landroid/view/View;
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .parameter "d"

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 256
    .local v5, showHorizontalScrollBar:Z
    const/4 v6, 0x0

    .line 258
    .local v6, showVerticalScrollBar:Z
    const-string v10, "showHorizontalScrollIndicator"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 259
    const-string v10, "showHorizontalScrollIndicator"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    .line 261
    :cond_0
    const-string v10, "showVerticalScrollIndicator"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 262
    const-string v10, "showVerticalScrollIndicator"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v6

    .line 265
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 266
    const-string v10, "TiUIScrollView"

    const-string v11, "Both scroll bars cannot be shown. Defaulting to vertical shown"

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v5, 0x0

    .line 270
    :cond_2
    const/4 v7, 0x0

    .line 272
    .local v7, type:I
    const-string v10, "width"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "contentWidth"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 273
    const-string v10, "width"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 274
    .local v9, width:Ljava/lang/Object;
    const-string v10, "contentWidth"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    .local v2, contentWidth:Ljava/lang/Object;
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v6, :cond_4

    .line 276
    :cond_3
    const/4 v7, 0x0

    .line 280
    .end local v2           #contentWidth:Ljava/lang/Object;
    .end local v9           #width:Ljava/lang/Object;
    :cond_4
    const-string v10, "height"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "contentHeight"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 281
    const-string v10, "height"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, height:Ljava/lang/Object;
    const-string v10, "contentHeight"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 283
    .local v1, contentHeight:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v5, :cond_6

    .line 284
    :cond_5
    const/4 v7, 0x1

    .line 289
    .end local v1           #contentHeight:Ljava/lang/Object;
    .end local v3           #height:Ljava/lang/Object;
    :cond_6
    const-string v10, "scrollType"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 290
    const-string v10, "scrollType"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 291
    .local v4, scrollType:Ljava/lang/Object;
    const-string v10, "vertical"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 292
    const/4 v7, 0x0

    .line 299
    .end local v4           #scrollType:Ljava/lang/Object;
    :cond_7
    :goto_0
    const/4 v8, 0x0

    .line 300
    .local v8, view:Landroid/view/View;
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 301
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v10, "layout"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "layout"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vertical"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 302
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 306
    :cond_8
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 313
    const-string v10, "TiUIScrollView"

    const-string v11, "creating vertical scroll view"

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v8, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v8           #view:Landroid/view/View;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 316
    .restart local v8       #view:Landroid/view/View;
    :goto_2
    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setNativeView(Landroid/view/View;)V

    .line 318
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 319
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 321
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 322
    return-void

    .line 293
    .end local v0           #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .end local v8           #view:Landroid/view/View;
    .restart local v4       #scrollType:Ljava/lang/Object;
    :cond_9
    const-string v10, "horizontal"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 294
    const/4 v7, 0x1

    goto :goto_0

    .line 303
    .end local v4           #scrollType:Ljava/lang/Object;
    .restart local v0       #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .restart local v8       #view:Landroid/view/View;
    :cond_a
    const-string v10, "layout"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "layout"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "horizontal"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 304
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_1

    .line 308
    :pswitch_0
    const-string v10, "TiUIScrollView"

    const-string v11, "creating horizontal scroll view"

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v8, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v8           #view:Landroid/view/View;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 310
    .restart local v8       #view:Landroid/view/View;
    goto :goto_2

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 335
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 336
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->computeScroll()V

    .line 338
    return-void
.end method

.method public scrollToBottom()V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v3, :cond_1

    .line 343
    move-object v0, v2

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    move-object v1, v0

    .line 344
    .local v1, scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->fullScroll(I)Z

    .line 349
    .end local v1           #scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    instance-of v3, v2, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v3, :cond_0

    .line 346
    move-object v0, v2

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    move-object v1, v0

    .line 347
    .local v1, scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
    const/16 v3, 0x82

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method
