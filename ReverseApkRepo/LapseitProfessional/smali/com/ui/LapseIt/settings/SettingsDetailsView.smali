.class public Lcom/ui/LapseIt/settings/SettingsDetailsView;
.super Landroid/app/Activity;
.source "SettingsDetailsView.java"


# instance fields
.field private descListener:Landroid/view/View$OnClickListener;

.field mInflater:Landroid/view/LayoutInflater;

.field mKey:Ljava/lang/String;

.field mParams:Landroid/os/Bundle;

.field mPrevChoice:Landroid/widget/ImageView;

.field mTitle:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field onItemClick:Landroid/view/View$OnClickListener;

.field onItemClickDisabled:Landroid/view/View$OnClickListener;

.field seekBar:Landroid/widget/SeekBar;

.field seekText:Landroid/widget/TextView;

.field selectedCheck:Landroid/graphics/Bitmap;

.field unselectedCheck:Landroid/graphics/Bitmap;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 377
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->onItemClickDisabled:Landroid/view/View$OnClickListener;

    .line 412
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->onItemClick:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->buildResolutionWarning()V

    return-void
.end method

.method private final buildResolutionWarning()V
    .locals 5

    .prologue
    .line 346
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 348
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 350
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 351
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ui/LapseIt/settings/SettingsDetailsView$6;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$6;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 360
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ui/LapseIt/settings/SettingsDetailsView$7;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$7;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 369
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private chooseDescriptor()V
    .locals 7

    .prologue
    const v6, 0x7f0b0072

    .line 301
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 303
    .local v0, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    .line 304
    .local v3, textId:I
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "resolution"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    const v3, 0x7f080027

    .line 326
    :cond_0
    :goto_0
    if-ltz v3, :cond_a

    .line 327
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 329
    .local v1, styledText:Ljava/lang/CharSequence;
    invoke-virtual {p0, v6}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .end local v1           #styledText:Ljava/lang/CharSequence;
    .end local v2           #text:Ljava/lang/String;
    :goto_1
    return-void

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "resolution"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    const v3, 0x7f080026

    goto :goto_0

    .line 308
    :cond_2
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "timescale"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    const v3, 0x7f080028

    goto :goto_0

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "limitmode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    const v3, 0x7f080029

    goto :goto_0

    .line 312
    :cond_4
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "geolocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    const v3, 0x7f08002a

    goto :goto_0

    .line 314
    :cond_5
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "renderencoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 315
    const v3, 0x7f08002b

    goto :goto_0

    .line 316
    :cond_6
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "renderquality"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 317
    const v3, 0x7f08002c

    goto :goto_0

    .line 318
    :cond_7
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "renderfps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 319
    const v3, 0x7f08002d

    goto :goto_0

    .line 320
    :cond_8
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "shutter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 321
    const v3, 0x7f08002e

    goto/16 :goto_0

    .line 322
    :cond_9
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v5, "dim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    const v3, 0x7f08002f

    goto/16 :goto_0

    .line 331
    :cond_a
    invoke-virtual {p0, v6}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setItemDisabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "param"

    .prologue
    .line 337
    const v0, 0x7f08004c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08004d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08004e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08004f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080050

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200dd

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->selectedCheck:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200dc

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->unselectedCheck:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mParams:Landroid/os/Bundle;

    .line 72
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mParams:Landroid/os/Bundle;

    const v9, 0x7f0b0003

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mParams:Landroid/os/Bundle;

    const/high16 v9, 0x7f0b

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    .line 75
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mParams:Landroid/os/Bundle;

    const v9, 0x7f0b0002

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mTitle:Ljava/lang/String;

    .line 76
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mValue:Ljava/lang/String;

    .line 78
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v9, "renderfps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setContentView(I)V

    .line 81
    const v8, 0x7f0b0074

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    .line 83
    const/16 v2, 0x1e

    .line 85
    .local v2, currentFPS:I
    :try_start_0
    const-string v8, "renderfps"

    invoke-static {p0, v8}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 90
    :goto_0
    const v8, 0x7f0b0073

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    .line 91
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    const/16 v9, 0xef

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 92
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/ui/LapseIt/settings/SettingsDetailsView$3;

    invoke-direct {v9, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$3;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 149
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800b8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->chooseDescriptor()V

    .line 291
    .end local v2           #currentFPS:I
    :goto_1
    return-void

    .line 86
    .restart local v2       #currentFPS:I
    :catch_0
    move-exception v5

    .line 87
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v2           #currentFPS:I
    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v9, "dim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setContentView(I)V

    .line 157
    const v8, 0x7f0b0074

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    .line 159
    const/16 v1, 0x32

    .line 161
    .local v1, currentDim:I
    :try_start_1
    const-string v8, "dim"

    invoke-static {p0, v8}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 166
    :goto_2
    const v8, 0x7f0b0073

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    .line 167
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 169
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekBar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;

    invoke-direct {v9, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$4;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 225
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->seekText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " %"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->chooseDescriptor()V

    goto :goto_1

    .line 162
    :catch_1
    move-exception v5

    .line 163
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 231
    .end local v1           #currentDim:I
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    const v8, 0x7f030021

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setContentView(I)V

    .line 234
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDetailParams(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, detailsArray:[[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 237
    const v8, 0x7f0b0070

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 238
    .local v0, container:Landroid/widget/LinearLayout;
    const v8, 0x7f0b0071

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b006e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mTitle:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    array-length v8, v4

    if-lt v6, v8, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->chooseDescriptor()V

    goto/16 :goto_1

    .line 241
    :cond_2
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030020

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 242
    .local v3, detailLayout:Landroid/view/View;
    aget-object v8, v4, v6

    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->onItemClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    aget-object v8, v4, v6

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const v9, 0x7f08004d

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 247
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x9

    if-ge v8, v9, :cond_3

    .line 248
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_3
    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 253
    aget-object v8, v4, v6

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setItemDisabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 255
    const v8, 0x7f0200d1

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->onItemClickDisabled:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v8, 0x7f0b006e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, -0x444445

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->descListener:Landroid/view/View$OnClickListener;

    if-nez v8, :cond_4

    .line 260
    new-instance v8, Lcom/ui/LapseIt/settings/SettingsDetailsView$5;

    invoke-direct {v8, p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView$5;-><init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->descListener:Landroid/view/View$OnClickListener;

    .line 268
    const v8, 0x7f0b0072

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->descListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_4
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mValue:Ljava/lang/String;

    aget-object v9, v4, v6

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 274
    const v8, 0x7f0b006f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mPrevChoice:Landroid/widget/ImageView;

    .line 275
    iget-object v8, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mPrevChoice:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView;->selectedCheck:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    :cond_5
    const-string v7, "Error"

    .line 280
    .local v7, valueString:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aget-object v9, v4, v6

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 284
    :goto_4
    const v8, 0x7f0b006e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 281
    :catch_2
    move-exception v5

    .line 282
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 289
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v3           #detailLayout:Landroid/view/View;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #i:I
    .end local v7           #valueString:Ljava/lang/String;
    :cond_6
    const-string v8, "This settings parameter was not found"

    invoke-virtual {p0, v8}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 298
    return-void
.end method
