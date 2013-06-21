.class public Lcom/rookiestudio/perfectviewer/TBookshelf;
.super Landroid/app/Activity;
.source "TBookshelf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;
.implements Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;,
        Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;,
        Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;,
        Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;"
    }
.end annotation


# static fields
.field private static BookItemLayout:I

.field private static ItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field public static LastBrowseFile:Ljava/lang/String;

.field public static LastBrowseFolder:Ljava/lang/String;

.field private static MaxIconHeight:I

.field private static MaxIconWidth:I

.field private static MaxItemHeight:I

.field private static MaxItemWidth:I

.field private static MaxReadMarkHeight:I

.field private static MaxReadMarkWidth:I

.field private static MaxSIconHeight:F

.field private static MaxSIconWidth:F

.field private static MaxTitleHeight:I

.field private static MaxTitleWidth:I

.field private static ShelfColumn:I

.field private static TitleTextSize:I


# instance fields
.field private BMPPaint:Landroid/graphics/Paint;

.field private BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

.field private BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

.field private BookshelfFilter:Ljava/lang/String;

.field public FileIconBigFolder:Landroid/graphics/Bitmap;

.field private FileListView:Landroid/widget/ListView;

.field private FolderButton:Landroid/widget/ImageButton;

.field private HomeButton:Landroid/widget/ImageButton;

.field private MTextPaint:Landroid/text/TextPaint;

.field private PreferenceButton:Landroid/widget/ImageButton;

.field private Refresh2Button:Landroid/widget/ImageButton;

.field private RefreshButton:Landroid/widget/ImageButton;

.field private ScanProgressDialog:Landroid/app/ProgressDialog;

.field private ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

.field public Scanning:Z

.field private UpFolderButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x3

    sput v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    .line 73
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 74
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemWidth:I

    .line 75
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemHeight:I

    .line 76
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconWidth:I

    .line 77
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconHeight:I

    .line 78
    sput v2, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconWidth:F

    .line 79
    sput v2, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconHeight:F

    .line 80
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxReadMarkWidth:I

    .line 81
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxReadMarkHeight:I

    .line 82
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxTitleWidth:I

    .line 83
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxTitleHeight:I

    .line 84
    sput v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->TitleTextSize:I

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    .line 62
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    .line 69
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileIconBigFolder:Landroid/graphics/Bitmap;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 88
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BMPPaint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method

.method private static BookshelfFolderAssigned()Z
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 120
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 123
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static CalculateSize(Landroid/view/Display;)V
    .locals 12
    .parameter "aDisplay"

    .prologue
    const v11, 0x7f030007

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/high16 v7, 0x4200

    .line 192
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    .local v4, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 195
    .local v1, ScreenHeight:I
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 197
    .local v2, ScreenWidth:I
    const/high16 v3, 0x3f80

    .line 198
    .local v3, SizeFactor:F
    const/4 v0, 0x0

    .line 199
    .local v0, Offset:I
    if-le v1, v2, :cond_3

    .line 200
    const/16 v5, 0x2d0

    if-lt v2, v5, :cond_0

    .line 201
    sput v9, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    .line 202
    const v3, 0x3fa66666

    .line 203
    const v5, 0x7f030008

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 233
    :goto_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v5

    sget v6, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    div-int/2addr v5, v6

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemWidth:I

    .line 234
    const/high16 v5, 0x42fc

    mul-float/2addr v5, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemHeight:I

    .line 235
    sget v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemWidth:I

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxTitleWidth:I

    .line 236
    const/high16 v5, 0x41f8

    mul-float/2addr v5, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v5

    sub-int/2addr v5, v0

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxTitleHeight:I

    .line 237
    sget v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemWidth:I

    int-to-float v5, v5

    const v6, 0x3f733333

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconWidth:I

    .line 238
    const/high16 v5, 0x42b4

    mul-float/2addr v5, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconHeight:I

    .line 239
    sget v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconWidth:I

    int-to-float v5, v5

    const v6, 0x3f333333

    mul-float/2addr v5, v6

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconWidth:F

    .line 240
    sget v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconHeight:I

    int-to-float v5, v5

    const v6, 0x3f4ccccd

    mul-float/2addr v5, v6

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconHeight:F

    .line 241
    mul-float v5, v7, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxReadMarkWidth:I

    .line 242
    mul-float v5, v7, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxReadMarkHeight:I

    .line 243
    sget v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconWidth:I

    sget v6, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    .line 244
    const/high16 v5, 0x4130

    mul-float/2addr v5, v3

    sget v6, Lcom/rookiestudio/perfectviewer/Global;->ScreenDPI:F

    const/high16 v7, 0x4320

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->TitleTextSize:I

    .line 245
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    sget v7, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    sput-object v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->ItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 246
    return-void

    .line 204
    :cond_0
    const/16 v5, 0x258

    if-lt v2, v5, :cond_1

    .line 205
    const v3, 0x3fa66666

    .line 206
    sput v8, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    .line 207
    sput v11, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    goto/16 :goto_0

    .line 208
    :cond_1
    const/16 v5, 0x190

    if-lt v2, v5, :cond_2

    .line 209
    sput v8, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    .line 210
    sput v11, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    goto/16 :goto_0

    .line 212
    :cond_2
    const/4 v5, 0x3

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    .line 213
    const v5, 0x7f030006

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    goto/16 :goto_0

    .line 216
    :cond_3
    const/high16 v5, 0x4040

    mul-float/2addr v5, v3

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TUtility;->Dip2Px(F)I

    move-result v0

    .line 217
    const/16 v5, 0x4b0

    if-lt v2, v5, :cond_4

    .line 218
    const v3, 0x3fa66666

    .line 219
    const v5, 0x7f03000a

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 220
    const/4 v5, 0x7

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    goto/16 :goto_0

    .line 221
    :cond_4
    const/16 v5, 0x3c0

    if-lt v2, v5, :cond_5

    .line 222
    const v3, 0x3fa66666

    .line 223
    const v5, 0x7f030009

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 224
    sput v10, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    goto/16 :goto_0

    .line 225
    :cond_5
    const/16 v5, 0x280

    if-lt v2, v5, :cond_6

    .line 226
    const v5, 0x7f030009

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 227
    sput v10, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    goto/16 :goto_0

    .line 229
    :cond_6
    const v5, 0x7f030008

    sput v5, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    .line 230
    sput v9, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    goto/16 :goto_0
.end method

.method public static CreateBookshelf(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 727
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TBookshelf;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 728
    .local v0, aBookshelf:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private InitUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->CalculateSize(Landroid/view/Display;)V

    .line 251
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 252
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 253
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    sget v1, Lcom/rookiestudio/perfectviewer/TBookshelf;->TitleTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 254
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 256
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setContentView(I)V

    .line 257
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->RefreshButton:Landroid/widget/ImageButton;

    .line 258
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->RefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Refresh2Button:Landroid/widget/ImageButton;

    .line 260
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Refresh2Button:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FolderButton:Landroid/widget/ImageButton;

    .line 262
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FolderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->HomeButton:Landroid/widget/ImageButton;

    .line 264
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->HomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpFolderButton:Landroid/widget/ImageButton;

    .line 266
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpFolderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->PreferenceButton:Landroid/widget/ImageButton;

    .line 268
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->PreferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    .line 270
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 271
    return-void
.end method

.method public static ScanFolder(Lcom/rookiestudio/baseclass/TResultReceiver;Landroid/content/Context;Z)Landroid/app/ProgressDialog;
    .locals 6
    .parameter "RR"
    .parameter "context"
    .parameter "QuickScan"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, aDialog:Landroid/app/ProgressDialog;
    if-nez p2, :cond_0

    .line 417
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 418
    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    invoke-static {p1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 421
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rookiestudio/perfectviewer/TScanBookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v1, it:Landroid/content/Intent;
    const-string v2, "receiver"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    const-string v2, "quick"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 425
    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemHeight:I

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxTitleHeight:I

    return v0
.end method

.method static synthetic access$12()F
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconWidth:F

    return v0
.end method

.method static synthetic access$13()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxSIconHeight:F

    return v0
.end method

.method static synthetic access$14()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxReadMarkWidth:I

    return v0
.end method

.method static synthetic access$15(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/text/TextPaint;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$16()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookItemLayout:I

    return v0
.end method

.method static synthetic access$17(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$18()Landroid/widget/AbsListView$LayoutParams;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TBookshelf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rookiestudio/perfectviewer/TBookshelf;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    return-object v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ShelfColumn:I

    return v0
.end method

.method static synthetic access$6(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BMPPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconWidth:I

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxIconHeight:I

    return v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->MaxItemWidth:I

    return v0
.end method


# virtual methods
.method public BookshelfRefresh(Z)V
    .locals 4
    .parameter "QuickScan"

    .prologue
    const/4 v3, 0x1

    .line 308
    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    .line 309
    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setProgressBarIndeterminateVisibility(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TScanBookService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, it:Landroid/content/Intent;
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    const-string v1, "quick"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    :goto_0
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 319
    return-void

    .line 316
    :cond_0
    const-string v1, "loadonly"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public CheckDefaultFolder()V
    .locals 7

    .prologue
    .line 157
    :try_start_0
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v4, :cond_2

    .line 176
    .end local v3           #i:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    const-string v4, "BookshelfFilter"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    .line 179
    :cond_1
    return-void

    .line 159
    .restart local v3       #i:I
    :cond_2
    :try_start_1
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, S:Ljava/lang/String;
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    sget-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, Posi:I
    if-lez v0, :cond_0

    .line 167
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 173
    .end local v0           #Posi:I
    .end local v1           #S:Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #S:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public UpdateTitle()V
    .locals 3

    .prologue
    const v2, 0x7f0a00ca

    .line 183
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c001f

    if-ne v1, v2, :cond_2

    .line 347
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-static {v1, p0, v3}, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanFolder(Lcom/rookiestudio/baseclass/TResultReceiver;Landroid/content/Context;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0020

    if-ne v1, v2, :cond_3

    .line 352
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    if-nez v1, :cond_0

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c001d

    if-ne v1, v2, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->finish()V

    .line 360
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateFileBrowser(Landroid/app/Activity;)V

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c001c

    if-ne v1, v2, :cond_5

    .line 363
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateHomeActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c001e

    if-ne v1, v2, :cond_7

    .line 365
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 368
    .local v0, Posi:I
    if-ltz v0, :cond_6

    .line 369
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    .line 373
    :goto_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->UpdateBookshelfFilter()V

    .line 376
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    const-string v1, "BookshelfFilter"

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpdateTitle()V

    goto :goto_0

    .line 371
    :cond_6
    const-string v1, ""

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    goto :goto_1

    .line 381
    .end local v0           #Posi:I
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0021

    if-ne v1, v2, :cond_0

    .line 382
    const/16 v1, 0x21

    invoke-static {p0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "perfectviewer"

    const-string v1, "TBookshelf onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->CheckNativeLibrary(Landroid/content/Context;)I

    .line 136
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->setLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->requestWindowFeature(I)Z

    .line 140
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->InitUI()V

    .line 141
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 142
    new-instance v0, Lcom/rookiestudio/baseclass/TResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/rookiestudio/baseclass/TResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    .line 143
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-virtual {v0, p0}, Lcom/rookiestudio/baseclass/TResultReceiver;->setReceiver(Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;)V

    .line 146
    new-instance v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;-><init>(Lcom/rookiestudio/perfectviewer/TBookshelf;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    .line 147
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFolderAssigned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "perfectviewer"

    const-string v1, "TBookshelf onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 337
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 95
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->KeyGoBack2:I

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->finish()V

    .line 104
    :goto_0
    const/4 v0, 0x1

    .line 106
    :goto_1
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->finish()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpFolderButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 4
    .parameter "result"
    .parameter "error"

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 389
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 391
    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TBookshelf;->onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "perfectviewer"

    const-string v1, "TBookshelf onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 343
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "perfectviewer"

    const-string v1, "TBookshelf onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 328
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 10
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 735
    packed-switch p1, :pswitch_data_0

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 737
    :pswitch_0
    const-string v4, "size"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 738
    .local v3, size:I
    const-string v4, "filename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, FileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 740
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 741
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 742
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a00d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 745
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 746
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 747
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 748
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 749
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 756
    .end local v1           #FileName:Ljava/lang/String;
    .end local v3           #size:I
    :pswitch_1
    :try_start_0
    const-string v4, "completed"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 757
    .local v0, Completed:I
    const-string v4, "filename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .restart local v1       #FileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 759
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 760
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    .end local v0           #Completed:I
    .end local v1           #FileName:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 766
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setProgressBarIndeterminateVisibility(Z)V

    .line 767
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 770
    :pswitch_3
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    .line 771
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 772
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 774
    :cond_1
    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TBookshelf;->setProgressBarIndeterminateVisibility(Z)V

    .line 775
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 776
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->UpdateBookshelfFilter()V

    .line 778
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookList:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 779
    iput-boolean v7, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->Scanning:Z

    .line 780
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 781
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/rookiestudio/perfectviewer/TScanBookService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->stopService(Landroid/content/Intent;)Z

    .line 782
    const-string v4, "showmessage"

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 783
    .local v2, showmessage:Z
    if-eqz v2, :cond_0

    .line 784
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    .line 278
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f020006

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileIconBigFolder:Landroid/graphics/Bitmap;

    .line 279
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    .line 280
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    if-lez v0, :cond_0

    .line 281
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f02000a

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    .line 292
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->CheckDefaultFolder()V

    .line 296
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->UpdateTitle()V

    .line 297
    const/4 v0, 0x1

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->CurrentScreen:I

    .line 298
    const-string v0, "perfectviewer"

    const-string v1, "TBookshelf onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V

    .line 303
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->FirstStartCheck(Landroid/app/Activity;)V

    .line 304
    return-void

    .line 283
    :cond_2
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 284
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    if-lez v0, :cond_0

    .line 285
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f02004c

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 288
    :cond_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    if-lez v0, :cond_0

    .line 289
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f02008c

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method
