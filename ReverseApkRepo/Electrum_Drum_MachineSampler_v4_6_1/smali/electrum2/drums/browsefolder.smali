.class public Lelectrum2/drums/browsefolder;
.super Landroid/app/Activity;
.source "browsefolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelectrum2/drums/browsefolder$OnlyDirs;
    }
.end annotation


# instance fields
.field private btnOkClick:Landroid/view/View$OnClickListener;

.field deletebutton:Landroid/widget/Button;

.field fileexists:Z

.field filter:Lelectrum2/drums/browsefolder$OnlyDirs;

.field foldertext:Landroid/widget/TextView;

.field listClick:Landroid/widget/AdapterView$OnItemClickListener;

.field newfolderbutton:Landroid/widget/Button;

.field newfolderlistener:Landroid/view/View$OnClickListener;

.field okbutton:Landroid/widget/Button;

.field savelist:Landroid/widget/ListView;

.field private saveupClick:Landroid/view/View$OnClickListener;

.field selectedfilename:Ljava/lang/String;

.field upbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    new-instance v0, Lelectrum2/drums/browsefolder$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/browsefolder$1;-><init>(Lelectrum2/drums/browsefolder;)V

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 143
    new-instance v0, Lelectrum2/drums/browsefolder$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/browsefolder$2;-><init>(Lelectrum2/drums/browsefolder;)V

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->newfolderlistener:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lelectrum2/drums/browsefolder$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/browsefolder$3;-><init>(Lelectrum2/drums/browsefolder;)V

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->saveupClick:Landroid/view/View$OnClickListener;

    .line 530
    new-instance v0, Lelectrum2/drums/browsefolder$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/browsefolder$4;-><init>(Lelectrum2/drums/browsefolder;)V

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method

.method private BrowseUp()V
    .locals 5

    .prologue
    .line 422
    sget-object v1, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 424
    .local v1, Test:Ljava/lang/String;
    move-object v3, v1

    .line 425
    .local v3, testend:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 428
    sget-object v4, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, SlashPos:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, Test2:Ljava/lang/String;
    sput-object v2, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Lelectrum2/drums/browsefolder;->ShowPatchFiles()V

    .line 445
    .end local v0           #SlashPos:I
    .end local v2           #Test2:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ShowPatchFiles()V
    .locals 10

    .prologue
    .line 186
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v7, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, dir:Ljava/io/File;
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->filter:Lelectrum2/drums/browsefolder$OnlyDirs;

    invoke-virtual {v2, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, children:[Ljava/lang/String;
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 193
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    array-length v7, v0

    if-lt v1, v7, :cond_1

    .line 214
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 215
    const v7, 0x7f030009

    .line 214
    invoke-direct {v4, p0, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 218
    .local v4, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 220
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 221
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 224
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    iget-object v8, p0, Lelectrum2/drums/browsefolder;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v7, p0, Lelectrum2/drums/browsefolder;->foldertext:Landroid/widget/TextView;

    sget-object v8, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 201
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #count:I
    .restart local v2       #dir:Ljava/io/File;
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v6, test:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v6           #test:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 234
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error loading sample folder filenames\r\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 236
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic access$0(Lelectrum2/drums/browsefolder;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lelectrum2/drums/browsefolder;->ShowPatchFiles()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/browsefolder;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    invoke-direct {p0}, Lelectrum2/drums/browsefolder;->BrowseUp()V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 256
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 248
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    aget-object v2, v0, v1

    invoke-static {v2}, Lelectrum2/drums/browsefolder;->deleteDirectory(Ljava/io/File;)Z

    .line 247
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public SendSave()V
    .locals 3

    .prologue
    .line 469
    sget-object v1, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 478
    .local v1, outpath:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v0, i:Landroid/content/Intent;
    const-string v2, "exportdataname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lelectrum2/drums/browsefolder;->setResult(ILandroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lelectrum2/drums/browsefolder;->finish()V

    .line 527
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 334
    if-eqz p2, :cond_4

    .line 336
    const/16 v6, 0x1e

    if-ne p1, v6, :cond_0

    .line 339
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 340
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "overwriteanswer"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, result:Ljava/lang/String;
    const-string v6, "YES"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 345
    invoke-virtual {p0}, Lelectrum2/drums/browsefolder;->SendSave()V

    .line 355
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v6, 0xa

    if-ne p1, v6, :cond_2

    .line 359
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 360
    .restart local v2       #extras:Landroid/os/Bundle;
    const-string v6, "newfoldername"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .restart local v4       #result:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 365
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v3, newfolderfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 375
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".nomedia"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v5, tempfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 378
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 383
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Lelectrum2/drums/browsefolder;->ShowPatchFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #newfolderfile:Ljava/io/File;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #tempfile:Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 348
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    iput-boolean v7, p0, Lelectrum2/drums/browsefolder;->fileexists:Z

    goto/16 :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error creating folder: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 394
    .local v1, errtoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #errtoast:Landroid/widget/Toast;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #result:Ljava/lang/String;
    :cond_4
    iput-boolean v7, p0, Lelectrum2/drums/browsefolder;->fileexists:Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f07001b

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lelectrum2/drums/browsefolder;->setContentView(I)V

    .line 46
    new-instance v0, Lelectrum2/drums/browsefolder$OnlyDirs;

    invoke-direct {v0, p0}, Lelectrum2/drums/browsefolder$OnlyDirs;-><init>(Lelectrum2/drums/browsefolder;)V

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->filter:Lelectrum2/drums/browsefolder$OnlyDirs;

    .line 48
    invoke-virtual {p0, v2}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->upbutton:Landroid/widget/Button;

    .line 50
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->savelist:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->okbutton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lelectrum2/drums/browsefolder;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/browsefolder;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0, v2}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->upbutton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lelectrum2/drums/browsefolder;->upbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/browsefolder;->saveupClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->newfolderbutton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lelectrum2/drums/browsefolder;->newfolderbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/browsefolder;->newfolderlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lelectrum2/drums/browsefolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/browsefolder;->foldertext:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lelectrum2/drums/browsefolder;->foldertext:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/browsefolder;->fileexists:Z

    .line 81
    invoke-direct {p0}, Lelectrum2/drums/browsefolder;->ShowPatchFiles()V

    .line 83
    return-void
.end method
