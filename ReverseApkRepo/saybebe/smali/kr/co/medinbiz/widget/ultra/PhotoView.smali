.class public Lkr/co/medinbiz/widget/ultra/PhotoView;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;
    }
.end annotation


# static fields
.field public static fDismiss:Landroid/widget/Button;

.field public static fEditText:Landroid/widget/EditText;

.field public static fMsg:Ljava/lang/String;

.field public static fTextView:Landroid/widget/TextView;

.field public static fWrite:Landroid/widget/Button;

.field public static faceDialog:Landroid/app/Dialog;

.field public static fimgview:Landroid/widget/ImageView;


# instance fields
.field private axisXD:F

.field private axisXU:F

.field private ctrlBar:Landroid/widget/LinearLayout;

.field private ctrlBtnDone:Landroid/widget/Button;

.field private ctrlBtnL:Landroid/widget/Button;

.field private ctrlBtnR:Landroid/widget/Button;

.field private ctrlFlag:Z

.field private dialog:Landroid/app/ProgressDialog;

.field private faceBookBtn:Landroid/widget/ImageButton;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFacebook:Lcom/facebook/android/Facebook;

.field mHandler:Landroid/os/Handler;

.field private mLoagindDialog:Landroid/app/ProgressDialog;

.field private mMain:Landroid/widget/LinearLayout;

.field private mNum:Ljava/lang/String;

.field private mPage:I

.field private mPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mTotal:I

.field private mTotalPage:I

.field private pointerCnt:I

.field private showingAlert:Z

.field private textArea:Landroid/widget/TextView;

.field private thisPosition:Landroid/widget/TextView;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "aContext"
    .parameter
    .parameter "aPosition"
    .parameter "aPage"
    .parameter "aTotal"
    .parameter "aTotalPage"
    .parameter "aNum"
    .parameter "main"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, aPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lcom/facebook/android/Facebook;

    const-string v2, "216539901710800"

    invoke-direct {v1, v2}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mFacebook:Lcom/facebook/android/Facebook;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->showingAlert:Z

    .line 262
    new-instance v1, Lkr/co/medinbiz/widget/ultra/PhotoView$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$1;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->handler:Landroid/os/Handler;

    .line 437
    new-instance v1, Lkr/co/medinbiz/widget/ultra/PhotoView$2;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$2;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    .line 113
    iput-object p8, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mMain:Landroid/widget/LinearLayout;

    .line 114
    iput-object p2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    .line 116
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPage:I

    .line 117
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotal:I

    .line 118
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotalPage:I

    .line 119
    iput-object p7, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mNum:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    .line 122
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lkr/co/medinbiz/R$layout;->ultra_photo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->viewFlipper:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 126
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pvc_ctrl_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBar:Landroid/widget/LinearLayout;

    .line 127
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pvc_ctrl_btnDone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnDone:Landroid/widget/Button;

    .line 128
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pvc_ctrl_btnL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnL:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pvc_ctrl_btnR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnR:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->text_area:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->textArea:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->this_position:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->thisPosition:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p0}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnL:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnR:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->setImageDown(I)V

    .line 154
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->write_facebook:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceBookBtn:Landroid/widget/ImageButton;

    .line 155
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceBookBtn:Landroid/widget/ImageButton;

    new-instance v2, Lkr/co/medinbiz/widget/ultra/PhotoView$4;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$4;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->textArea:Landroid/widget/TextView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->thisPosition:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 168
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mMain:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mLoagindDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    return v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->feed()V

    return-void
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/ultra/PhotoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->showingAlert:Z

    return-void
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->login()V

    return-void
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->write()V

    return-void
.end method

.method private feed()V
    .locals 6

    .prologue
    .line 394
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->facebook_writing:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 395
    const/4 v5, 0x0

    .line 394
    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mLoagindDialog:Landroid/app/ProgressDialog;

    .line 396
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/PhotoView$6;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$6;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 403
    return-void
.end method

.method private getPhotoList(Ljava/lang/String;I)V
    .locals 4
    .parameter "aMNum"
    .parameter "aCurrentPage"

    .prologue
    .line 237
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->dialog:Landroid/app/ProgressDialog;

    .line 238
    new-instance v0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;

    invoke-direct {v0, p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/PhotoView$5;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;Ljava/lang/String;I)V

    .line 259
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->start()V

    .line 260
    return-void
.end method

.method private login()V
    .locals 5

    .prologue
    .line 388
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 389
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_stream, user_photos, email"

    aput-object v4, v2, v3

    .line 390
    new-instance v3, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    .line 388
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/android/Facebook;->authorize2(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 391
    return-void
.end method

.method private setImageDown(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, -0x1

    .line 174
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    move-result-object v0

    .line 177
    .local v0, imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lkr/co/medinbiz/helper/FileManager;->getPhotosDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v0, v2, v1, v3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 179
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private write()V
    .locals 10

    .prologue
    .line 407
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v5, params:Landroid/os/Bundle;
    const-string v6, "message"

    sget-object v7, Lkr/co/medinbiz/widget/ultra/PhotoView;->fMsg:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v6, "name"

    const-string v7, "Saybebe"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v7, "description"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v9, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v9, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Ultra;->getPlace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v7, "source"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v9, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v9, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Ultra;->getPlace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 419
    .local v2, byteArray:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    move-result-object v4

    .line 420
    .local v4, imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    .line 421
    iget v7, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    .line 420
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Ultra;

    .line 421
    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Ultra;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-virtual {v4, v6}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 421
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 425
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 426
    .local v0, b:[B
    const-string v6, "picture"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 427
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mFacebook:Lcom/facebook/android/Facebook;

    const-string v7, "me/photos"

    const-string v8, "POST"

    invoke-virtual {v6, v7, v5, v8}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0           #b:[B
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #byteArray:Ljava/io/ByteArrayOutputStream;
    .end local v4           #imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    .end local v5           #params:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v3

    .line 431
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mHandler:Landroid/os/Handler;

    const/16 v7, -0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->widget:Landroid/view/View;

    return-object v0
.end method

.method public goNext()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 194
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-direct {p0, v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->setImageDown(I)V

    .line 195
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$anim;->left_in:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 196
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$anim;->left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 197
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 198
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->textArea:Landroid/widget/TextView;

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->thisPosition:Landroid/widget/TextView;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_0

    .line 203
    :cond_2
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPage:I

    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotalPage:I

    if-ge v0, v1, :cond_3

    .line 205
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mNum:Ljava/lang/String;

    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPage:I

    invoke-direct {p0, v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->getPhotoList(Ljava/lang/String;I)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->isShowingAlert()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const-string v0, ""

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->message_no_more_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public goPrevious()V
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    if-lez v0, :cond_1

    .line 220
    iget v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-direct {p0, v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->setImageDown(I)V

    .line 221
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$anim;->right_in:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 222
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$anim;->right_out:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 223
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 224
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->textArea:Landroid/widget/TextView;

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->thisPosition:Landroid/widget/TextView;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->isShowingAlert()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, ""

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->message_no_more_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isShowingAlert()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->showingAlert:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v0, 0x7f99

    .line 376
    if-nez p2, :cond_1

    .line 377
    if-ne p1, v0, :cond_0

    .line 378
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-ne p1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/PhotoViewFinishListner;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-interface {v0, v1, v2, v3}, Lkr/co/medinbiz/widget/ultra/util/PhotoViewFinishListner;->PhotoViewFinish(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 305
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnDone:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 362
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    .line 312
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnL:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->goPrevious()V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBtnR:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->goNext()V

    goto :goto_0

    .line 324
    :cond_4
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->viewFlipper:Landroid/widget/ViewFlipper;

    if-ne p1, v1, :cond_0

    .line 326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->pointerCnt:I

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXD:F

    goto :goto_1

    .line 332
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXU:F

    .line 336
    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->pointerCnt:I

    if-lt v1, v0, :cond_1

    .line 340
    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXU:F

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXD:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 342
    iget-boolean v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlFlag:Z

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->setPannel(Z)Z

    move-result v1

    iput-boolean v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlFlag:Z

    goto :goto_1

    .line 344
    :cond_6
    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXU:F

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXD:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 346
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->goNext()V

    goto :goto_1

    .line 348
    :cond_7
    iget v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXU:F

    iget v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->axisXD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 350
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->goPrevious()V

    goto :goto_1
.end method

.method setPannel(Z)Z
    .locals 3
    .parameter "vis"

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p1, :cond_0

    .line 291
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->ctrlBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "text"

    .prologue
    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->showingAlert:Z

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    const-string v1, "OK"

    new-instance v2, Lkr/co/medinbiz/widget/ultra/PhotoView$3;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$3;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    return-void
.end method
