.class public Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthorizeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)Lkr/co/medinbiz/widget/ultra/PhotoView;
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 462
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    .line 463
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 464
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$layout;->face_dialog:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 465
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    const-string v3, "Custom Dialog"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$id;->fimgview:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fimgview:Landroid/widget/ImageView;

    .line 467
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$id;->dialogedittext:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fEditText:Landroid/widget/EditText;

    .line 468
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$id;->dialogtextview:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fTextView:Landroid/widget/TextView;

    .line 469
    sget-object v3, Lkr/co/medinbiz/widget/ultra/PhotoView;->fTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I
    invoke-static {v5}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$4(Lkr/co/medinbiz/widget/ultra/PhotoView;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I
    invoke-static {v5}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$4(Lkr/co/medinbiz/widget/ultra/PhotoView;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Ultra;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$id;->dialogwrite:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fWrite:Landroid/widget/Button;

    .line 472
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    sget v3, Lkr/co/medinbiz/R$id;->dialogdismiss:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fDismiss:Landroid/widget/Button;

    .line 474
    invoke-static {}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    move-result-object v1

    .line 476
    .local v1, imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v2

    .line 477
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPosition:I
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$4(Lkr/co/medinbiz/widget/ultra/PhotoView;)I

    move-result v3

    .line 476
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Ultra;

    .line 477
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {v1, v2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fimgview:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fWrite:Landroid/widget/Button;

    new-instance v3, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->fDismiss:Landroid/widget/Button;

    new-instance v3, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$2;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$2;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    sget-object v2, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 502
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 506
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 510
    return-void
.end method
