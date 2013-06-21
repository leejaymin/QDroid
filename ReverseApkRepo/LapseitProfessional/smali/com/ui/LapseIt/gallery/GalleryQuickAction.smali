.class public Lcom/ui/LapseIt/gallery/GalleryQuickAction;
.super Lui/utils/QuickAction/QuickActionPopup;
.source "GalleryQuickAction.java"

# interfaces
.implements Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;
    }
.end annotation


# instance fields
.field private actionClickHandler:Landroid/view/View$OnClickListener;

.field private mExtras:Landroid/os/Bundle;

.field private parent:Lcom/ui/LapseIt/gallery/GalleryListView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/ui/LapseIt/gallery/GalleryListView;IIZ)V
    .locals 1
    .parameter "contentView"
    .parameter "listView"
    .parameter "width"
    .parameter "height"
    .parameter "fousable"

    .prologue
    .line 43
    invoke-direct {p0, p1, p3, p4, p5}, Lui/utils/QuickAction/QuickActionPopup;-><init>(Landroid/view/View;IIZ)V

    .line 74
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$1;-><init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    .line 48
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->setContentView(I)V

    .line 49
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->setContainerView(I)V

    .line 50
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->setContentAnimation(I)V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->resetGalleryList()V

    return-void
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/gallery/GalleryQuickAction;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildRatingDialog(JLjava/lang/String;)V

    return-void
.end method

.method private final buildRatingDialog(JLjava/lang/String;)V
    .locals 8
    .parameter "galleryId"
    .parameter "title"

    .prologue
    const/16 v7, 0xa

    const/4 v6, -0x2

    .line 166
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    .local v2, ll:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/RatingBar;

    iget-object v5, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-direct {v4, v5}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    .line 169
    .local v4, ratingView:Landroid/widget/RatingBar;
    invoke-virtual {v4, v3}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 171
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 174
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 178
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Rating for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 180
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 181
    iget-object v6, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v6}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080092

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/ui/LapseIt/gallery/GalleryQuickAction$2;

    invoke-direct {v7, p0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$2;-><init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 187
    const-string v6, "Rate"

    new-instance v7, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;

    invoke-direct {v7, p0, p1, p2, v4}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;-><init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;JLandroid/widget/RatingBar;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 199
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private buildResultDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "message"

    .prologue
    .line 230
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 232
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 233
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/gallery/GalleryQuickAction$4;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$4;-><init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetGalleryList()V
    .locals 5

    .prologue
    .line 151
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    .line 152
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->getInstance()Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, sorting:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v4}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected invertContentView(Z)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 252
    return-void
.end method

.method public onRatingResult(I)V
    .locals 3
    .parameter "resultId"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 210
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v0, v0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On Rating Result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 215
    :pswitch_0
    const-string v0, "Rating registered"

    const-string v1, "Thanks for your vote"

    invoke-direct {p0, v0, v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildResultDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v0, "Rating not registered"

    const-string v1, "It seems that you already voted for this one"

    invoke-direct {p0, v0, v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildResultDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_2
    const-string v0, "Rating not registered"

    const-string v1, "An error ocurred, please report to the devs"

    invoke-direct {p0, v0, v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildResultDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showAsQuickAction(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "anchor"
    .parameter "extras"

    .prologue
    .line 57
    iput-object p2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mExtras:Landroid/os/Bundle;

    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Lui/utils/QuickAction/QuickActionItem;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v5, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-direct {v1, v2, v3, v4, v5}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Lui/utils/QuickAction/QuickActionItem;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v5, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->RATE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-direct {v1, v2, v3, v4, v5}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Lui/utils/QuickAction/QuickActionItem;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v5, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-direct {v1, v2, v3, v4, v5}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Lui/utils/QuickAction/QuickActionItem;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v5, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->USER:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-direct {v1, v2, v3, v4, v5}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v1, Lui/utils/QuickAction/QuickActionItem;

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v5, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-direct {v1, v2, v3, v4, v5}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->showAsQuickAction(Landroid/view/View;)V

    .line 72
    return-void
.end method
