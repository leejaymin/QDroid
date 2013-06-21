.class public Lcom/jellybus/fx/Activity_Border_Stamp;
.super Landroid/app/Activity;
.source "Activity_Border_Stamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx/Activity_Border_Stamp$ImageAdapter;
    }
.end annotation


# instance fields
.field private final CANCEL:I

.field private final CLEAR:I

.field private final apply_handler:Landroid/os/Handler;

.field private compare_Listener:Landroid/view/View$OnTouchListener;

.field private controller_Listener:Landroid/view/View$OnTouchListener;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private gridview:Landroid/widget/GridView;

.field private final imgPath:Ljava/lang/String;

.field private isTextStamp:Z

.field private isViewSet:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private stamp_button_apply:Landroid/widget/ImageView;

.field private stamp_button_compare:Landroid/widget/ImageView;

.field private stamp_compare_info:Landroid/widget/TextView;

.field private stamp_icon_4:Landroid/widget/ImageView;

.field private stamp_icon_5:Landroid/widget/ImageView;

.field private stamp_pic:Landroid/widget/ImageView;

.field private stamp_sub:Landroid/widget/LinearLayout;

.field private tc:Lcom/jellybus/fx_sub/ThumbnailController;

.field private touchView:Lcom/jellybus/fx_sub/StampControllView;

.field private final view_size_handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/ThumbnailController;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/PicsPlay Pro/.stamp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->imgPath:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->CLEAR:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->CANCEL:I

    .line 124
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$1;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->view_size_handler:Landroid/os/Handler;

    .line 232
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$2;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->none_listener:Landroid/view/View$OnTouchListener;

    .line 241
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$3;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->compare_Listener:Landroid/view/View$OnTouchListener;

    .line 263
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$4;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->controller_Listener:Landroid/view/View$OnTouchListener;

    .line 384
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$5;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 397
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$6;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->apply_handler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->setUnactivityResource()V

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Border_Stamp;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isTextStamp:Z

    return v0
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Border_Stamp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V

    return-void
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Border_Stamp;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Border_Stamp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->imgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Border_Stamp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->resettingTouchView()V

    return-void
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->goBack()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Border_Stamp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isViewSet:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->setInactiveResource()V

    return-void
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->view_size_handler:Landroid/os/Handler;

    return-object v0
.end method

.method private createDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "index"

    .prologue
    .line 339
    packed-switch p1, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    const-string v1, "OK"

    new-instance v2, Lcom/jellybus/fx/Activity_Border_Stamp$7;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$7;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    const-string v1, "Cancel"

    new-instance v2, Lcom/jellybus/fx/Activity_Border_Stamp$8;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$8;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 361
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 363
    const v1, 0x7f050064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 364
    const-string v1, "OK"

    new-instance v2, Lcom/jellybus/fx/Activity_Border_Stamp$9;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$9;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 371
    const-string v1, "Cancel"

    new-instance v2, Lcom/jellybus/fx/Activity_Border_Stamp$10;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_Border_Stamp$10;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPreview()V
    .locals 3

    .prologue
    .line 196
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    .line 197
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 198
    return-void
.end method

.method private goBack()V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->clearBitmap()V

    .line 557
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->clearAll()V

    .line 558
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->imgPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeFolder(Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 562
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 563
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V

    .line 565
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->setValueNull()V

    .line 566
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->removeButton()V

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->startActivity(Landroid/content/Intent;)V

    .line 570
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->finish()V

    .line 571
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->overridePendingTransition(II)V

    .line 572
    return-void
.end method

.method private mainButtonToggle(Z)V
    .locals 6
    .parameter "turnOff"

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_apply:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_apply:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_sub:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 212
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_apply:Landroid/widget/ImageView;

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_apply:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    return-void
.end method

.method private removeFolder(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    .line 166
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, childFileList:[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 179
    .end local v1           #childFileList:[Ljava/io/File;
    :cond_0
    return-void

    .line 169
    .restart local v1       #childFileList:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v3

    .line 170
    .local v0, childFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeFolder(Ljava/lang/String;)V

    .line 169
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_DISPLAY_NAME=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private resettingTouchView()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1, v0}, Lcom/jellybus/fx_sub/StampControllView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 162
    return-void
.end method

.method private setInactiveResource()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_5:Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :cond_0
    return-void
.end method

.method private setUnactivityResource()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_5:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-direct {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V

    .line 540
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 544
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 546
    :cond_2
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->goBack()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_sub:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    .line 92
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->grid_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_apply:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_compare_info:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_5:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 105
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->getPreview()V

    .line 113
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/StampControllView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    .line 117
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->controller_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/StampControllView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->view_size_handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 711
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 712
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 714
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 716
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 718
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 720
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 722
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 724
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 728
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 729
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 730
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 731
    :cond_0
    return-void
.end method

.method public stamp_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->goBack()V

    goto :goto_0
.end method

.method public stamp_button_cancel_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-direct {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V

    .line 524
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 528
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->goBack()V

    goto :goto_0
.end method

.method public sub_clear_listener(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 334
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 336
    :cond_0
    return-void
.end method

.method public sub_remove_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 326
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/StampControllView;->removeStamp()V

    .line 328
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->setUnactivityResource()V

    .line 331
    :cond_0
    return-void
.end method

.method public sub_stamp_listener(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 291
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 292
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    new-instance v1, Lcom/jellybus/fx/Activity_Border_Stamp$ImageAdapter;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/jellybus/fx/Activity_Border_Stamp$ImageAdapter;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 294
    invoke-direct {p0, v4}, Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V

    .line 295
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0, v3}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isTextStamp:Z

    .line 298
    return-void
.end method

.method public sub_text_listener(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 301
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 302
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    new-instance v1, Lcom/jellybus/fx/Activity_Border_Stamp$ImageAdapter;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/jellybus/fx/Activity_Border_Stamp$ImageAdapter;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->gridview:Landroid/widget/GridView;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 304
    invoke-direct {p0, v4}, Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V

    .line 305
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0, v5}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 307
    iput-boolean v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->isTextStamp:Z

    .line 308
    return-void
.end method

.method public sub_user_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 312
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 313
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 314
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V

    .line 316
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->removeButton()V

    .line 317
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/StampControllView;->isViewSet:Z

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Border_Stamp_User;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, user_stamp:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->startActivity(Landroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp;->finish()V

    .line 322
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->overridePendingTransition(II)V

    .line 323
    return-void
.end method
