.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 270
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 274
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 278
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "record"

    .prologue
    .line 282
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 286
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 290
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 294
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .parameter "record"

    .prologue
    .line 308
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 312
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 316
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 320
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 324
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "record"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 332
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "record"

    .prologue
    .line 336
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 340
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 344
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 348
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 352
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 356
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "record"

    .prologue
    .line 266
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "record"

    .prologue
    .line 360
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "addedCount"

    .prologue
    .line 364
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    .line 365
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "beforeText"

    .prologue
    .line 368
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isChecked"

    .prologue
    .line 372
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 373
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "className"

    .prologue
    .line 376
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "record"
    .parameter "contentDescription"

    .prologue
    .line 380
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "currentItemIndex"

    .prologue
    .line 384
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 385
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isEnabled"

    .prologue
    .line 388
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 389
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "fromIndex"

    .prologue
    .line 392
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    .line 393
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isFullScreen"

    .prologue
    .line 396
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    .line 397
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "itemCount"

    .prologue
    .line 400
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    .line 401
    return-void
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollX"

    .prologue
    .line 406
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "maxScrollY"

    .prologue
    .line 411
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "record"
    .parameter "parcelableData"

    .prologue
    .line 414
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 415
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "isPassword"

    .prologue
    .line 418
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 419
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "removedCount"

    .prologue
    .line 422
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollX"

    .prologue
    .line 426
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    .line 427
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "scrollY"

    .prologue
    .line 430
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    .line 431
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "scrollable"

    .prologue
    .line 434
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 435
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "record"
    .parameter "source"

    .prologue
    .line 438
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 439
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "toIndex"

    .prologue
    .line 442
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    .line 443
    return-void
.end method