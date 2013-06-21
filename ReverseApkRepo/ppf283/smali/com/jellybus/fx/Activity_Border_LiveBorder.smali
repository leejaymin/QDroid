.class public Lcom/jellybus/fx/Activity_Border_LiveBorder;
.super Landroid/app/Activity;
.source "Activity_Border_LiveBorder.java"


# instance fields
.field private final apply_handler:Landroid/os/Handler;

.field private border_button_compare:Landroid/widget/ImageView;

.field private border_button_sub:Landroid/widget/ImageView;

.field private border_compare_info:Landroid/widget/TextView;

.field private border_picture:Landroid/widget/ImageView;

.field private border_seekbar_first:Landroid/widget/SeekBar;

.field private border_seekbar_second:Landroid/widget/SeekBar;

.field private border_select1:Landroid/widget/ImageView;

.field private border_select10:Landroid/widget/ImageView;

.field private border_select11:Landroid/widget/ImageView;

.field private border_select12:Landroid/widget/ImageView;

.field private border_select13:Landroid/widget/ImageView;

.field private border_select14:Landroid/widget/ImageView;

.field private border_select15:Landroid/widget/ImageView;

.field private border_select16:Landroid/widget/ImageView;

.field private border_select17:Landroid/widget/ImageView;

.field private border_select18:Landroid/widget/ImageView;

.field private border_select19:Landroid/widget/ImageView;

.field private border_select2:Landroid/widget/ImageView;

.field private border_select20:Landroid/widget/ImageView;

.field private border_select21:Landroid/widget/ImageView;

.field private border_select22:Landroid/widget/ImageView;

.field private border_select23:Landroid/widget/ImageView;

.field private border_select24:Landroid/widget/ImageView;

.field private border_select25:Landroid/widget/ImageView;

.field private border_select26:Landroid/widget/ImageView;

.field private border_select27:Landroid/widget/ImageView;

.field private border_select28:Landroid/widget/ImageView;

.field private border_select29:Landroid/widget/ImageView;

.field private border_select3:Landroid/widget/ImageView;

.field private border_select30:Landroid/widget/ImageView;

.field private border_select31:Landroid/widget/ImageView;

.field private border_select32:Landroid/widget/ImageView;

.field private border_select4:Landroid/widget/ImageView;

.field private border_select5:Landroid/widget/ImageView;

.field private border_select6:Landroid/widget/ImageView;

.field private border_select7:Landroid/widget/ImageView;

.field private border_select8:Landroid/widget/ImageView;

.field private border_select9:Landroid/widget/ImageView;

.field private border_sub:Landroid/widget/LinearLayout;

.field private border_view:Lcom/jellybus/fx_sub/BorderView;

.field private compare_listener:Landroid/view/View$OnTouchListener;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private isSubOn:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private tc:Lcom/jellybus/fx_sub/ThumbnailController;

.field private final view_size_handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/ThumbnailController;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->isSubOn:Z

    .line 193
    new-instance v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;-><init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->view_size_handler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder$2;-><init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->none_listener:Landroid/view/View$OnTouchListener;

    .line 233
    new-instance v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder$3;-><init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->compare_listener:Landroid/view/View$OnTouchListener;

    .line 258
    new-instance v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder$4;-><init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 478
    new-instance v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;-><init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->apply_handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/ThumbnailController;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->isSubOn:Z

    return v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->removeBitmap()V

    return-void
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Border_LiveBorder;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->resettingTouchView()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->view_size_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private goBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/BorderView;->isViewSet:Z

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->removeBitmap()V

    .line 656
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/BorderView;->isViewSet:Z

    .line 657
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/BorderView;->removeGray()V

    .line 658
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/BorderView;->removePattern()V

    .line 661
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->startActivity(Landroid/content/Intent;)V

    .line 663
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->finish()V

    .line 664
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->overridePendingTransition(II)V

    .line 666
    .end local v0           #intent_main:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 636
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 637
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    .line 639
    :cond_0
    return-void
.end method

.method private resettingTouchView()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    invoke-virtual {v1, v0}, Lcom/jellybus/fx_sub/BorderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 219
    return-void
.end method

.method private setOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select13:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 436
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select14:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select15:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select16:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select17:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select18:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select19:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select20:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select21:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select22:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select23:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select24:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select25:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select26:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select27:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select28:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select29:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select30:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select31:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select32:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    return-void
.end method


# virtual methods
.method public border_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 476
    return-void
.end method

.method public border_button_cancel_listener(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->goBack()V

    .line 648
    return-void
.end method

.method public border_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->isSubOn:Z

    .line 468
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->isSubOn:Z

    goto :goto_0
.end method

.method public border_select_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f020044

    .line 288
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->setOffButton()V

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 293
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 297
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 301
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 305
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 309
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 312
    :pswitch_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 313
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select6:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 316
    :pswitch_6
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 317
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select7:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 320
    :pswitch_7
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 321
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select8:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 324
    :pswitch_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 325
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select9:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 328
    :pswitch_9
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 329
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select10:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 332
    :pswitch_a
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 333
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select11:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 336
    :pswitch_b
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 337
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select12:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 340
    :pswitch_c
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 341
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select13:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 344
    :pswitch_d
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 345
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select14:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 348
    :pswitch_e
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 349
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select15:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 352
    :pswitch_f
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 353
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select16:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 356
    :pswitch_10
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 357
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select17:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 360
    :pswitch_11
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 361
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select18:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 364
    :pswitch_12
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 365
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select19:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 368
    :pswitch_13
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 369
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select20:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 372
    :pswitch_14
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 373
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select21:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 376
    :pswitch_15
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 377
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select22:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_16
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 381
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select23:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 384
    :pswitch_17
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 385
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select24:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 388
    :pswitch_18
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 389
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select25:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 392
    :pswitch_19
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 393
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select26:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 396
    :pswitch_1a
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 397
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select27:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 400
    :pswitch_1b
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 401
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select28:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 404
    :pswitch_1c
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 405
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select29:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 408
    :pswitch_1d
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 409
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select30:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 412
    :pswitch_1e
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 413
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select31:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_1f
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setCurrentBorder(I)V

    .line 417
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select32:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f060007
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->goBack()V

    .line 645
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 111
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/BorderView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    .line 112
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/BorderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_compare_info:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_sub:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_compare:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_button_sub:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select1:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select2:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select3:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select4:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select5:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select6:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select7:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select8:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select9:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select10:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select11:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select12:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select13:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select14:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select15:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select16:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select17:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select18:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select19:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select20:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select21:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select22:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select23:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select24:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select25:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select26:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select27:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select28:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select29:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select30:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select31:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_select32:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_first:Landroid/widget/SeekBar;

    .line 162
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_second:Landroid/widget/SeekBar;

    .line 163
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 164
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 167
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 168
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_second:Landroid/widget/SeekBar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 169
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_first:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_seekbar_second:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    .line 174
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 175
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 181
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder;->view_size_handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 672
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 673
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 675
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 677
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 679
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 681
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 683
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 685
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 689
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 690
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 691
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 692
    :cond_0
    return-void
.end method
