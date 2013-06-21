.class Lqh;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/io/FileFilter;
.implements Llo;


# instance fields
.field private ㅼ꽑嫄:I

.field public 癤욱븳援:Ljava/io/File;

.field final synthetic 궗:Lpv;

.field private 먯꽌:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lpv;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lqh;->궗:Lpv;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    iput-object p2, p0, Lqh;->癤욱븳援:Ljava/io/File;

    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    invoke-direct {p0, v0}, Lqh;->癤욱븳援(Ljava/lang/String;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iget-object v0, v0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/io/File;)V
    .locals 2

    iput-object p1, p0, Lqh;->癤욱븳援:Ljava/io/File;

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    iget v1, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iget-object v0, v0, Lqg;->궗:Ljava/lang/String;

    invoke-direct {p0, v0}, Lqh;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {p0}, Lqh;->notifyDataSetChanged()V

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->궗(Lpv;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    iget v1, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lqh;->궗:Lpv;

    invoke-virtual {v1, v0}, Lpv;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, p0, Lqh;->궗:Lpv;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lpv;->癤욱븳援:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x2

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lqh;->ㅼ꽑嫄:I

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->癤욱븳援(Lpv;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v1, Lqg;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v10, v4}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh;->癤욱븳援:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v1, Lqg;

    invoke-direct {v1, v3, v10, v9}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v1, Lqg;

    const-string v4, "monospace"

    invoke-direct {v1, v3, v4, v9}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v1, Lqg;

    const-string v4, "serif"

    invoke-direct {v1, v3, v4, v9}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v1, Lqg;

    const-string v4, "sans-serif"

    invoke-direct {v1, v3, v4, v9}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget v0, p0, Lqh;->ㅼ꽑嫄:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :goto_4
    return-void

    :cond_2
    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    new-instance v7, Lqg;

    const/4 v8, 0x3

    invoke-direct {v7, v3, v6, v8}, Lqg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v7, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v7, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    invoke-virtual {v0}, Lqg;->癤욱븳援()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v0, Lqg;->궗:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v1, p0, Lqh;->ㅼ꽑嫄:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iget v3, v0, Lqg;->먯꽌:I

    if-ne v3, v9, :cond_6

    iget-object v0, v0, Lqg;->궗:Ljava/lang/String;

    if-nez v0, :cond_6

    iput v2, p0, Lqh;->ㅼ꽑嫄:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private 癤욱븳援(Lqg;I)V
    .locals 4

    iget v0, p0, Lqh;->ㅼ꽑嫄:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lqh;->궗:Lpv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpv;->癤욱븳援:Z

    iput p2, p0, Lqh;->ㅼ꽑嫄:I

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->ㅼ꽑嫄(Lpv;)Loh;

    move-result-object v0

    iget-object v1, p0, Lqh;->궗:Lpv;

    invoke-static {v1}, Lpv;->弱밧(Lpv;)Log;

    move-result-object v1

    iget-object v2, p1, Lqg;->궗:Ljava/lang/String;

    iget-object v3, p0, Lqh;->궗:Lpv;

    invoke-static {v3}, Lpv;->쇰뒗(Lpv;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Loh;->癤욱븳援(Log;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ttf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "otf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->癤욱븳援(Lpv;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2, p1}, Lqh;->癤욱븳援(Landroid/view/View;I)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->癤욱븳援(Lpv;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2, p1}, Lqh;->癤욱븳援(Landroid/view/View;I)V

    return-object p2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    check-cast p1, Lll;

    invoke-virtual {p1}, Lll;->궗()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lqh;->癤욱븳援(Ljava/io/File;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iget v1, v0, Lqg;->먯꽌:I

    if-ne v1, v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->먯꽌(Lpv;)Lri;

    move-result-object v0

    invoke-interface {v0}, Lri;->덉쓣()Lfm;

    move-result-object v1

    const-class v0, Lll;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->궗(Lpv;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    iget v1, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lll;

    invoke-direct {v3, v2}, Lll;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->먯꽌(Lpv;)Lri;

    move-result-object v0

    invoke-interface {v0}, Lri;->留먰븷()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lll;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_1
    sget v0, Lnt;->font_browse_title:I

    invoke-virtual {v3, v0}, Lll;->setTitle(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ttf"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "otf"

    aput-object v5, v0, v4

    invoke-virtual {v3, v0}, Lll;->癤욱븳援([Ljava/lang/String;)V

    iget-object v0, p0, Lqh;->癤욱븳援:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqh;->癤욱븳援:Ljava/io/File;

    :goto_1
    invoke-virtual {v3, v0}, Lll;->癤욱븳援(Ljava/io/File;)V

    const/4 v0, -0x1

    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v1}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3, p0}, Lll;->癤욱븳援(Llo;)V

    invoke-virtual {v1, v3}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v3}, Lll;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->궗(Lpv;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    iget v1, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqh;->궗:Lpv;

    invoke-static {v1}, Lpv;->궗(Lpv;)Lcom/mxtech/widget/Spinner2;

    move-result-object v1

    iget v2, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v1, v2}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    throw v0

    :cond_3
    invoke-direct {p0, v0, p3}, Lqh;->癤욱븳援(Lqg;I)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method 癤욱븳援()I
    .locals 1

    iget v0, p0, Lqh;->ㅼ꽑嫄:I

    return v0
.end method

.method public 癤욱븳援(Lll;Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Lll;->궗()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lqh;->癤욱븳援(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v1, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    iget-object v0, v0, Lqg;->궗:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqh;->궗:Lpv;

    invoke-static {v0}, Lpv;->궗(Lpv;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method 궗()Lqg;
    .locals 2

    iget-object v0, p0, Lqh;->먯꽌:Ljava/util/ArrayList;

    iget v1, p0, Lqh;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    return-object v0
.end method
