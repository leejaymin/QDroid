.class public Lelectrum2/drums/loadexported;
.super Landroid/app/Activity;
.source "loadexported.java"


# instance fields
.field private browseupClick:Landroid/view/View$OnClickListener;

.field browseupbutton:Landroid/widget/Button;

.field private btnOkClick:Landroid/view/View$OnClickListener;

.field filelist:Landroid/widget/ListView;

.field listClick:Landroid/widget/AdapterView$OnItemClickListener;

.field okbutton:Landroid/widget/Button;

.field resolutionspin:Landroid/widget/Spinner;

.field selectedfilename:Ljava/lang/String;

.field selectedname:Landroid/widget/TextView;

.field subfolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "exported"

    iput-object v0, p0, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    .line 61
    new-instance v0, Lelectrum2/drums/loadexported$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadexported$1;-><init>(Lelectrum2/drums/loadexported;)V

    iput-object v0, p0, Lelectrum2/drums/loadexported;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 176
    new-instance v0, Lelectrum2/drums/loadexported$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadexported$2;-><init>(Lelectrum2/drums/loadexported;)V

    iput-object v0, p0, Lelectrum2/drums/loadexported;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lelectrum2/drums/loadexported$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/loadexported$3;-><init>(Lelectrum2/drums/loadexported;)V

    iput-object v0, p0, Lelectrum2/drums/loadexported;->browseupClick:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method

.method private ShowPatternFiles()V
    .locals 10

    .prologue
    .line 124
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    array-length v7, v0

    if-lt v1, v7, :cond_1

    .line 148
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 149
    const v7, 0x7f030009

    .line 148
    invoke-direct {v4, p0, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    .local v4, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v7, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 154
    iget-object v7, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 155
    iget-object v7, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 158
    iget-object v7, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    iget-object v8, p0, Lelectrum2/drums/loadexported;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 139
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #count:I
    .restart local v2       #dir:Ljava/io/File;
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

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

    .line 140
    .local v6, test:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
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

    .line 137
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v6           #test:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 167
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error loading exported folder filenames\r\n"

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

    .line 169
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic access$0(Lelectrum2/drums/loadexported;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lelectrum2/drums/loadexported;->ShowPatternFiles()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadexported;->setContentView(I)V

    .line 38
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadexported;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lelectrum2/drums/loadexported;->filelist:Landroid/widget/ListView;

    .line 39
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadexported;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/loadexported;->selectedname:Landroid/widget/TextView;

    .line 41
    sget-object v0, Lelectrum2/drums/globalSounds;->exportsubfolder:Ljava/lang/String;

    iput-object v0, p0, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    .line 44
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadexported;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/loadexported;->okbutton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lelectrum2/drums/loadexported;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/loadexported;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lelectrum2/drums/loadexported;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/loadexported;->browseupbutton:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lelectrum2/drums/loadexported;->browseupbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/loadexported;->browseupClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-direct {p0}, Lelectrum2/drums/loadexported;->ShowPatternFiles()V

    .line 58
    return-void
.end method
