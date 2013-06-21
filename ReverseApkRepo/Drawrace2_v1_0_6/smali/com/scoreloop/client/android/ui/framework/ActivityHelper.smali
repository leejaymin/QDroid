.class public abstract Lcom/scoreloop/client/android/ui/framework/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field public static final ANIM_NEXT:I = 0x1

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_PREVIOUS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startLocalActivity(Landroid/app/ActivityGroup;Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 10
    .parameter "activityGroup"
    .parameter "intent"
    .parameter "identifier"
    .parameter "regionId"
    .parameter "anim"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 42
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 43
    .local v0, activityManager:Landroid/app/LocalActivityManager;
    invoke-virtual {v0, p2, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, paneView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 46
    .local v4, parent:Landroid/view/ViewParent;
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 47
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "should not happen - currently we don\'t recycle activities"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/ActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 51
    .local v5, region:Landroid/view/ViewGroup;
    if-eqz p4, :cond_4

    instance-of v6, v5, Landroid/widget/ViewSwitcher;

    if-eqz v6, :cond_4

    move-object v1, v5

    .line 52
    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 54
    .local v1, animator:Landroid/widget/ViewSwitcher;
    if-ne p4, v8, :cond_1

    .line 55
    const/high16 v6, 0x7f04

    invoke-virtual {v1, p0, v6}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 56
    const v6, 0x7f040001

    invoke-virtual {v1, p0, v6}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 62
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v2

    .line 63
    .local v2, numChilds:I
    if-nez v2, :cond_2

    .line 64
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v9, v6}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .end local v1           #animator:Landroid/widget/ViewSwitcher;
    .end local v2           #numChilds:I
    :goto_1
    return-void

    .line 58
    .restart local v1       #animator:Landroid/widget/ViewSwitcher;
    :cond_1
    const v6, 0x7f040002

    invoke-virtual {v1, p0, v6}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 59
    const v6, 0x7f040003

    invoke-virtual {v1, p0, v6}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    .line 66
    .restart local v2       #numChilds:I
    :cond_2
    if-ne v2, v8, :cond_3

    .line 67
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v8, v6}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/ViewSwitcher;->removeViewAt(I)V

    .line 72
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v8, v6}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_1

    .line 77
    .end local v1           #animator:Landroid/widget/ViewSwitcher;
    .end local v2           #numChilds:I
    :cond_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
