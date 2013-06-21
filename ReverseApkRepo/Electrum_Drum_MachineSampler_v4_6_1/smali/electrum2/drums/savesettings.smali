.class public Lelectrum2/drums/savesettings;
.super Landroid/app/Activity;
.source "savesettings.java"


# instance fields
.field private btnOkClick:Landroid/view/View$OnClickListener;

.field private deleteClick:Landroid/view/View$OnClickListener;

.field deletebutton:Landroid/widget/Button;

.field fileexists:Z

.field listClick:Landroid/widget/AdapterView$OnItemClickListener;

.field okbutton:Landroid/widget/Button;

.field patternname:Landroid/widget/EditText;

.field savelist:Landroid/widget/ListView;

.field private saveupClick:Landroid/view/View$OnClickListener;

.field selectedfilename:Ljava/lang/String;

.field upbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lelectrum2/drums/savesettings$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/savesettings$1;-><init>(Lelectrum2/drums/savesettings;)V

    iput-object v0, p0, Lelectrum2/drums/savesettings;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 208
    new-instance v0, Lelectrum2/drums/savesettings$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/savesettings$2;-><init>(Lelectrum2/drums/savesettings;)V

    iput-object v0, p0, Lelectrum2/drums/savesettings;->deleteClick:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lelectrum2/drums/savesettings$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/savesettings$3;-><init>(Lelectrum2/drums/savesettings;)V

    iput-object v0, p0, Lelectrum2/drums/savesettings;->saveupClick:Landroid/view/View$OnClickListener;

    .line 428
    new-instance v0, Lelectrum2/drums/savesettings$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/savesettings$4;-><init>(Lelectrum2/drums/savesettings;)V

    iput-object v0, p0, Lelectrum2/drums/savesettings;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method

.method private BrowseUp()V
    .locals 5

    .prologue
    .line 315
    sget-object v1, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    .line 317
    .local v1, Test:Ljava/lang/String;
    move-object v3, v1

    .line 318
    .local v3, testend:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 321
    const-string v4, "patterns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, SlashPos:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, Test2:Ljava/lang/String;
    sput-object v2, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Lelectrum2/drums/savesettings;->ShowPatchFiles()V

    .line 339
    .end local v0           #SlashPos:I
    .end local v2           #Test2:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ShowPatchFiles()V
    .locals 10

    .prologue
    .line 134
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/electrum/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    array-length v7, v0

    if-lt v1, v7, :cond_1

    .line 161
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 162
    const v7, 0x7f030009

    .line 161
    invoke-direct {v4, p0, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 165
    .local v4, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v7, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 167
    iget-object v7, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 168
    iget-object v7, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 171
    iget-object v7, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    iget-object v8, p0, Lelectrum2/drums/savesettings;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 150
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #count:I
    .restart local v2       #dir:Ljava/io/File;
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/electrum/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, test:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
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

    .line 148
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v6           #test:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 180
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

    .line 182
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic access$0(Lelectrum2/drums/savesettings;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lelectrum2/drums/savesettings;->ShowPatchFiles()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/savesettings;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Lelectrum2/drums/savesettings;->BrowseUp()V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 193
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 202
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 194
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    aget-object v2, v0, v1

    invoke-static {v2}, Lelectrum2/drums/savesettings;->deleteDirectory(Ljava/io/File;)Z

    .line 193
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public SendSave()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lelectrum2/drums/globalSounds;->songsavesubfolder:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lelectrum2/drums/savesettings;->patternname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, outpath:Ljava/lang/String;
    const-string v3, "patterns"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 368
    move-object v1, v2

    .line 370
    .local v1, newPatternName:Ljava/lang/String;
    const-string v3, ".pat"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 373
    iget-boolean v3, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    if-eqz v3, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    .local v0, i:Landroid/content/Intent;
    const-string v3, "savepatternname"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v6, v0}, Lelectrum2/drums/savesettings;->setResult(ILandroid/content/Intent;)V

    .line 383
    invoke-virtual {p0}, Lelectrum2/drums/savesettings;->finish()V

    .line 388
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-boolean v3, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    if-nez v3, :cond_1

    .line 393
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/electrum/patterns/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    iput-boolean v7, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lelectrum2/drums/overWrite;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .restart local v0       #i:Landroid/content/Intent;
    sput-boolean v7, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 405
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lelectrum2/drums/savesettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    .restart local v0       #i:Landroid/content/Intent;
    const-string v3, "savepatternname"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v6, v0}, Lelectrum2/drums/savesettings;->setResult(ILandroid/content/Intent;)V

    .line 417
    invoke-virtual {p0}, Lelectrum2/drums/savesettings;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 279
    if-eqz p2, :cond_2

    .line 281
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_0

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "overwriteanswer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, result:Ljava/lang/String;
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lelectrum2/drums/savesettings;->SendSave()V

    .line 308
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iput-boolean v3, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    goto :goto_0

    .line 305
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f07001b

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lelectrum2/drums/savesettings;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lelectrum2/drums/savesettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 47
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->patternname:Landroid/widget/EditText;

    .line 48
    invoke-virtual {p0, v2}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->upbutton:Landroid/widget/Button;

    .line 50
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->savelist:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->okbutton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lelectrum2/drums/savesettings;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/savesettings;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0, v2}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->upbutton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lelectrum2/drums/savesettings;->upbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/savesettings;->saveupClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lelectrum2/drums/savesettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/savesettings;->deletebutton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lelectrum2/drums/savesettings;->deletebutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/savesettings;->deleteClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/savesettings;->fileexists:Z

    .line 66
    invoke-direct {p0}, Lelectrum2/drums/savesettings;->ShowPatchFiles()V

    .line 68
    return-void
.end method
