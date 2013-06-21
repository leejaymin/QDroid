.class public Lelectrum2/drums/loadrumkits;
.super Landroid/app/Activity;
.source "loadrumkits.java"


# instance fields
.field private browseupClick:Landroid/view/View$OnClickListener;

.field browseupbutton:Landroid/widget/Button;

.field private btnOkClick:Landroid/view/View$OnClickListener;

.field defaultnames:[Ljava/lang/String;

.field filelist:Landroid/widget/ListView;

.field listClick:Landroid/widget/AdapterView$OnItemClickListener;

.field okbutton:Landroid/widget/Button;

.field resolutionspin:Landroid/widget/Spinner;

.field selectedfilename:Ljava/lang/String;

.field selectedname:Landroid/widget/TextView;

.field subfolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "drumkits"

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->subfolder:Ljava/lang/String;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Built-In 808"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Built-In Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Built-In 909"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Built-In Orchestral"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Built-In HipHop"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Built-In Human BeatBox"

    aput-object v2, v0, v1

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->defaultnames:[Ljava/lang/String;

    .line 63
    new-instance v0, Lelectrum2/drums/loadrumkits$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadrumkits$1;-><init>(Lelectrum2/drums/loadrumkits;)V

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 193
    new-instance v0, Lelectrum2/drums/loadrumkits$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadrumkits$2;-><init>(Lelectrum2/drums/loadrumkits;)V

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lelectrum2/drums/loadrumkits$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadrumkits$3;-><init>(Lelectrum2/drums/loadrumkits;)V

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->browseupClick:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method

.method private ShowPatternFiles()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 126
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/electrum/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, dir:Ljava/io/File;
    sget-object v8, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    const-string v9, "drumkits"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 134
    iget-object v1, p0, Lelectrum2/drums/loadrumkits;->defaultnames:[Ljava/lang/String;

    .line 136
    .local v1, children1:[Ljava/lang/String;
    array-length v8, v1

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    new-array v0, v8, [Ljava/lang/String;

    .line 138
    .local v0, children:[Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    array-length v10, v1

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    invoke-static {v8, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    .end local v1           #children1:[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 154
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    array-length v8, v0

    if-lt v2, v8, :cond_2

    .line 165
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 166
    const v8, 0x7f030009

    .line 165
    invoke-direct {v5, p0, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 169
    .local v5, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v8, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 171
    iget-object v8, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 172
    iget-object v8, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 175
    iget-object v8, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    iget-object v9, p0, Lelectrum2/drums/loadrumkits;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    .end local v0           #children:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v3           #dir:Ljava/io/File;
    .end local v5           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    return-void

    .line 143
    .restart local v3       #dir:Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #children:[Ljava/lang/String;
    goto :goto_0

    .line 156
    .restart local v2       #count:I
    :cond_2
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/electrum/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, test:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0           #children:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v3           #dir:Ljava/io/File;
    .end local v7           #test:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 184
    .local v4, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error loading sample folder filenames\r\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 186
    .local v6, temptoast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method static synthetic access$0(Lelectrum2/drums/loadrumkits;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lelectrum2/drums/loadrumkits;->ShowPatternFiles()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadrumkits;->setContentView(I)V

    .line 40
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadrumkits;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    .line 41
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadrumkits;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->selectedname:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadrumkits;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->okbutton:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lelectrum2/drums/loadrumkits;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/loadrumkits;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadrumkits;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/loadrumkits;->browseupbutton:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lelectrum2/drums/loadrumkits;->browseupbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/loadrumkits;->browseupClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-direct {p0}, Lelectrum2/drums/loadrumkits;->ShowPatternFiles()V

    .line 60
    return-void
.end method
