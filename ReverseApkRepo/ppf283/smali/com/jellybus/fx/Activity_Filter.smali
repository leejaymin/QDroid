.class public Lcom/jellybus/fx/Activity_Filter;
.super Landroid/app/Activity;
.source "Activity_Filter.java"


# instance fields
.field private alpha:I

.field private ani:Landroid/view/animation/Animation;

.field aniListener:Landroid/view/animation/Animation$AnimationListener;

.field private final apply_handler:Landroid/os/Handler;

.field private checkbox_listener:Landroid/view/View$OnClickListener;

.field private compare:Landroid/graphics/Bitmap;

.field private compare_listener:Landroid/view/View$OnTouchListener;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field public filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

.field private filterID:I

.field private filterID_index:I

.field private filter_button_compare:Landroid/widget/ImageView;

.field private filter_compare_info:Landroid/widget/TextView;

.field private filter_icon:Landroid/widget/ImageView;

.field private filter_info:Landroid/widget/RelativeLayout;

.field private filter_info_bg:Landroid/widget/ImageView;

.field private filter_info_ok:Landroid/widget/ImageView;

.field private filter_pic:Landroid/widget/ImageView;

.field private filter_picture_flip:Landroid/widget/ImageView;

.field private filter_picture_original:Landroid/widget/ImageView;

.field private filter_seekbar:Landroid/widget/SeekBar;

.field private filter_sub:Landroid/widget/LinearLayout;

.field private filter_text_title:Landroid/widget/TextView;

.field private filter_text_title_group:Landroid/widget/TextView;

.field private filter_title_layout:Landroid/widget/LinearLayout;

.field private filter_value:Landroid/widget/TextView;

.field private flipTouchListener:Landroid/view/View$OnTouchListener;

.field private help_listener:Landroid/view/View$OnClickListener;

.field private isFlipping:Z

.field private isLeft:Z

.field private isMove:Z

.field private isOkFirst:Z

.field private isSubOn:Z

.field private line_y:F

.field private list:[I

.field private mDialog:Landroid/app/Dialog;

.field private menu:Ljava/lang/String;

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private opacity:I

.field private opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private pastFilterID:I

.field private pref:Landroid/content/SharedPreferences;

.field private preview:Landroid/graphics/Bitmap;

.field private startX:F

.field private texture:Landroid/graphics/Bitmap;

.field public toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    .line 78
    new-instance v0, Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/FilterAdapter;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 348
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$1;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->help_listener:Landroid/view/View$OnClickListener;

    .line 364
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$2;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 393
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$3;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->none_listener:Landroid/view/View$OnTouchListener;

    .line 402
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$4;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->checkbox_listener:Landroid/view/View$OnClickListener;

    .line 463
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$5;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->flipTouchListener:Landroid/view/View$OnTouchListener;

    .line 528
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$6;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->aniListener:Landroid/view/animation/Animation$AnimationListener;

    .line 696
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$7;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$7;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->apply_handler:Landroid/os/Handler;

    .line 845
    new-instance v0, Lcom/jellybus/fx/Activity_Filter$8;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Filter$8;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare_listener:Landroid/view/View$OnTouchListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Filter;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Filter;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->startX:F

    return v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Filter;->isLeft:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Filter;->isMove:Z

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Filter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/jellybus/fx/Activity_Filter;->alpha:I

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Filter;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->alpha:I

    return v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Filter;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isMove:Z

    return v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Filter;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isLeft:Z

    return v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Filter;->flipFilterFavHis(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Filter;->flipFilter(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Filter;->isFlipping:Z

    return-void
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_Filter;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    return v0
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_title_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title_group:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->saveHistory()V

    return-void
.end method

.method static synthetic access$27(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    return-void
.end method

.method static synthetic access$28(Lcom/jellybus/fx/Activity_Filter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jellybus/fx/Activity_Filter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jellybus/fx/Activity_Filter;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    return-void
.end method

.method static synthetic access$33(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$34(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jellybus/fx/Activity_Filter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z

    return-void
.end method

.method static synthetic access$37(Lcom/jellybus/fx/Activity_Filter;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z

    return v0
.end method

.method static synthetic access$38(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->new_preview()V

    return-void
.end method

.method static synthetic access$39(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->checkTimeIntent()V

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Filter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    return-void
.end method

.method static synthetic access$40(Lcom/jellybus/fx/Activity_Filter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$41(Lcom/jellybus/fx/Activity_Filter;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Filter;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    return v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->insertFavorite()V

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Filter;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isFlipping:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Filter;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/jellybus/fx/Activity_Filter;->startX:F

    return-void
.end method

.method private checkGroup(II)V
    .locals 3
    .parameter "past"
    .parameter "current"

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 592
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    :cond_0
    return-void
.end method

.method private checkTimeIntent()V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a

    .line 900
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->pastFilterID:I

    if-eq v1, v2, :cond_0

    .line 901
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 904
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->new_preview()V

    .line 905
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    .line 906
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    .local v0, intent_time:Landroid/content/Intent;
    const-string v1, "list"

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 908
    const-string v1, "line"

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->line_y:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 910
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 911
    invoke-virtual {p0, v3, v4}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    .line 921
    :goto_0
    return-void

    .line 913
    .end local v0           #intent_time:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->new_preview()V

    .line 914
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    .line 915
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .restart local v0       #intent_time:Landroid/content/Intent;
    const-string v1, "filterID"

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 918
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 919
    invoke-virtual {p0, v3, v4}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private flipFilter(Z)V
    .locals 5
    .parameter "isLeft"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 551
    if-eqz p1, :cond_1

    .line 552
    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    add-int/lit8 v0, v1, -0x1

    .line 553
    .local v0, check:I
    if-ltz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-direct {p0, v1, v0}, Lcom/jellybus/fx/Activity_Filter;->checkGroup(II)V

    .line 557
    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    .line 558
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setAnimation()V

    .line 559
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setNewPreview()V

    .line 560
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 564
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 565
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const v2, 0x7f05004f

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 569
    .end local v0           #check:I
    :cond_1
    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    add-int/lit8 v0, v1, 0x1

    .line 570
    .restart local v0       #check:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-direct {p0, v1, v0}, Lcom/jellybus/fx/Activity_Filter;->checkGroup(II)V

    .line 574
    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    .line 575
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setAnimation()V

    .line 576
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setNewPreview()V

    .line 577
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 579
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 581
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 582
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private flipFilterFavHis(Z)V
    .locals 5
    .parameter "isLeft"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 599
    if-eqz p1, :cond_1

    .line 600
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    .line 604
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    .line 605
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setAnimation()V

    .line 606
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setNewPreview()V

    .line 607
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 611
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v4, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 612
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const v1, 0x7f05004f

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 616
    :cond_1
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 617
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    .line 620
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    .line 621
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setAnimation()V

    .line 622
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setNewPreview()V

    .line 623
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 627
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v4, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 628
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const v1, 0x7f050050

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getBitmap()V
    .locals 3

    .prologue
    .line 230
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    .line 231
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method

.method private getFavoriteFilterList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 323
    new-instance v2, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-virtual {v2, v6}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 325
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 326
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 329
    iget-object v3, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT FilterNumber FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Filter;->startManagingCursor(Landroid/database/Cursor;)V

    .line 332
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    :cond_0
    const-string v3, "FilterNumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 336
    .local v1, filterNumber:I
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v6, v3, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 337
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    .line 334
    if-nez v3, :cond_0

    .line 339
    .end local v1           #filterNumber:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 340
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 341
    return-void
.end method

.method private insertFavorite()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 429
    new-instance v2, Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    .line 430
    .local v2, sql:Lcom/jellybus/fx_sub/SQLlite;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 431
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 432
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 435
    iget-object v3, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT FilterNumber FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 437
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 438
    .local v0, count:I
    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    .line 439
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    const-string v3, "FilterNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 442
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 443
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const v4, 0x7f05004d

    invoke-virtual {p0, v4}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 452
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->insertD(I)V

    .line 456
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 457
    return-void

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 449
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    const-string v4, "Favorite!"

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private new_preview()V
    .locals 4

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    .line 685
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    .line 686
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 687
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 688
    const/4 v0, 0x1

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 689
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 805
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_original:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 807
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 808
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 810
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 818
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    .line 820
    :cond_2
    return-void
.end method

.method private removeCompareBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_original:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 823
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 824
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 826
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    .line 828
    :cond_0
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 832
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 833
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    .line 835
    :cond_0
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    .line 841
    :cond_0
    return-void
.end method

.method private saveHistory()V
    .locals 6

    .prologue
    .line 774
    new-instance v2, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    .line 775
    .local v2, sql:Lcom/jellybus/fx_sub/SQLlite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 776
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 780
    :cond_0
    iget-object v3, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT FilterNumber FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 781
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->startManagingCursor(Landroid/database/Cursor;)V

    .line 782
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 783
    .local v0, count:I
    const/16 v3, 0x13

    if-le v0, v3, :cond_1

    .line 784
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 785
    const-string v3, "FilterNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 788
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 790
    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 791
    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->insertD(I)V

    .line 795
    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 796
    return-void
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isLeft:Z

    if-eqz v0, :cond_0

    .line 641
    const v0, 0x7f04000a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->ani:Landroid/view/animation/Animation;

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->ani:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->aniListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 646
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 648
    return-void

    .line 643
    :cond_0
    const v0, 0x7f040009

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->ani:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private setNewPreview()V
    .locals 3

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removePreviewBitmap()V

    .line 653
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 654
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 656
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v1, "Grunge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setTextureBitmap()V

    .line 658
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setTexture()V

    .line 659
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 660
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    :goto_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    .line 674
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 675
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->opacity:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 677
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 664
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Filter;->process()V

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setTexture()V
    .locals 4

    .prologue
    .line 253
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 256
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 259
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeTextureBitmap()V

    .line 262
    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isSameSize:Z

    if-eqz v0, :cond_0

    .line 263
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    .line 264
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 265
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeTextureBitmap()V

    .line 275
    :goto_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changePreTextureToBlurIndex()V

    .line 278
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 279
    return-void

    .line 268
    :cond_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 270
    const/4 v0, 0x1

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 271
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeTextureBitmap()V

    goto :goto_0
.end method

.method private setTextureBitmap()V
    .locals 4

    .prologue
    .line 284
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 286
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 288
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v2, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    .line 290
    .local v0, filterName:Ljava/lang/String;
    const-string v2, "Concrete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020088

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v2, "Dirt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009e

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 294
    :cond_2
    const-string v2, "Daguerreo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009d

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 296
    :cond_3
    const-string v2, "Aged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d2

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 298
    :cond_4
    const-string v2, "80s Video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020126

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 300
    :cond_5
    const-string v2, "Overdue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020128

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 302
    :cond_6
    const-string v2, "Sack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012d

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 304
    :cond_7
    const-string v2, "Vertigo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020089

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 306
    :cond_8
    const-string v2, "Scratching"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 307
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020136

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 308
    :cond_9
    const-string v2, "Slasher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 309
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020135

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 310
    :cond_a
    const-string v2, "Old Paper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 311
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020210

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 312
    :cond_b
    const-string v2, "Storm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 313
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020211

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 314
    :cond_c
    const-string v2, "Bark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private startProcess()V
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removePreviewBitmap()V

    .line 237
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v1, "Grunge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setTextureBitmap()V

    .line 239
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->setTexture()V

    .line 240
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 241
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 247
    :goto_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    .line 248
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 249
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 245
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Filter;->process()V

    goto :goto_0
.end method


# virtual methods
.method public filter_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 770
    return-void
.end method

.method public filter_button_cancel_listener(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 942
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f050051

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f050052

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 943
    .local v0, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 945
    const/4 v2, -0x1

    new-instance v3, Lcom/jellybus/fx/Activity_Filter$9;

    invoke-direct {v3, p0}, Lcom/jellybus/fx/Activity_Filter$9;-><init>(Lcom/jellybus/fx/Activity_Filter;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 943
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->mDialog:Landroid/app/Dialog;

    .line 983
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 984
    return-void
.end method

.method public filter_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 927
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 929
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z

    .line 936
    :goto_0
    return-void

    .line 932
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 933
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Filter;->isSubOn:Z

    goto :goto_0
.end method

.method public fx_listener(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 877
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->new_preview()V

    .line 883
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    .line 884
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jellybus/fx/Activity_FX;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v0, intent_fx:Landroid/content/Intent;
    const-string v2, "filterID"

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const-string v1, "menu"

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 888
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 889
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    .line 890
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 988
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->checkTimeIntent()V

    .line 1007
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    iput-object v4, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    .line 995
    :cond_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->new_preview()V

    .line 996
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_FX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 999
    .local v0, intent_fx:Landroid/content/Intent;
    const-string v2, "filterID"

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v1, "menu"

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    iput-object v4, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 1002
    iput-object v4, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    .line 1003
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 1004
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 1005
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 120
    const v1, 0x7f0600ba

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f0600b9

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_original:Landroid/widget/ImageView;

    .line 122
    const v1, 0x7f0600bb

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    .line 124
    const v1, 0x7f0600b4

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_title_layout:Landroid/widget/LinearLayout;

    .line 125
    const v1, 0x7f0600b5

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f0600b6

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title_group:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0600c3

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_button_compare:Landroid/widget/ImageView;

    .line 130
    const v1, 0x7f0600bd

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    .line 131
    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_compare_info:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0600bc

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0600be

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_seekbar:Landroid/widget/SeekBar;

    .line 136
    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    .line 138
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    .line 139
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_text_view:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 141
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_text_view:Landroid/widget/TextView;

    const v2, 0x7f050065

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->empty_text_view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->toast:Landroid/widget/Toast;

    .line 148
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 153
    const v1, 0x7f0600c5

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;

    .line 154
    const v1, 0x7f0600c6

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info_bg:Landroid/widget/ImageView;

    .line 155
    const v1, 0x7f0600c8

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Filter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info_ok:Landroid/widget/ImageView;

    .line 157
    const-string v1, "pref"

    invoke-virtual {p0, v1, v4}, Lcom/jellybus/fx/Activity_Filter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->pref:Landroid/content/SharedPreferences;

    .line 158
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->editor:Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->pref:Landroid/content/SharedPreferences;

    const-string v2, "isFilterFirst"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jellybus/fx/Activity_Filter;->isOkFirst:Z

    .line 160
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Filter;->isOkFirst:Z

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 163
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info_ok:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->help_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filterID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    .line 178
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 190
    .end local v0           #i:I
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    .line 193
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Filter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "line_y"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Filter;->line_y:F

    .line 194
    iget v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    iput v1, p0, Lcom/jellybus/fx/Activity_Filter;->pastFilterID:I

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->filter_text_title_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->getBitmap()V

    .line 204
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->startProcess()V

    .line 206
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 208
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_picture_original:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->flipTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_button_compare:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_seekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 215
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_sub:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->getFavoriteFilterList()V

    .line 221
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter;->checkbox_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->filter_info:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 182
    .restart local v0       #i:I
    :cond_4
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter;->list:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/jellybus/fx/Activity_Filter;->filterID:I

    if-ne v1, v2, :cond_5

    .line 183
    iput v0, p0, Lcom/jellybus/fx/Activity_Filter;->filterID_index:I

    goto/16 :goto_2

    .line 181
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1014
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 1015
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1017
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1019
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1021
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1023
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1024
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1025
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1027
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1031
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1032
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1033
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1034
    :cond_0
    return-void
.end method

.method public time_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter;->empty_view:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Filter;->checkTimeIntent()V

    .line 897
    return-void
.end method
