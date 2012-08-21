.class public Ledu/umich/PowerTutor/widget/DataSourceConfigure;
.super Landroid/app/Activity;
.source "DataSourceConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;
    }
.end annotation


# instance fields
.field private dataSource:Ledu/umich/PowerTutor/widget/DataSource;

.field private level:I

.field private longOptions:[Ljava/lang/String;

.field private shortOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->shortOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->longOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)Ledu/umich/PowerTutor/widget/DataSource;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    return-object v0
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/widget/DataSourceConfigure;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 99
    if-ne p2, v1, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, resultValue:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v1, v0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->finish()V

    .line 105
    .end local v0           #resultValue:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v10}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 53
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 55
    const-string v8, "data_source"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ledu/umich/PowerTutor/widget/DataSource;

    iput-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    .line 56
    const-string v8, "level"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    .line 58
    :cond_0
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    if-nez v8, :cond_1

    .line 59
    new-instance v8, Ledu/umich/PowerTutor/widget/DataSource;

    invoke-direct {v8}, Ledu/umich/PowerTutor/widget/DataSource;-><init>()V

    iput-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    .line 60
    iput v10, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    .line 62
    :cond_1
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    iget v9, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    invoke-virtual {v8, v9}, Ledu/umich/PowerTutor/widget/DataSource;->getTitle(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    iget v9, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    invoke-virtual {v8, v9}, Ledu/umich/PowerTutor/widget/DataSource;->getShortOptions(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->shortOptions:[Ljava/lang/String;

    .line 64
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    iget v9, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    invoke-virtual {v8, v9}, Ledu/umich/PowerTutor/widget/DataSource;->getLongOptions(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->longOptions:[Ljava/lang/String;

    .line 66
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v5, listView:Landroid/widget/ListView;
    new-instance v0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;

    invoke-direct {v0, p0, p0, v10, v5}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;-><init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;Landroid/content/Context;ILandroid/widget/ListView;)V

    .line 79
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    const/4 v6, 0x0

    .line 80
    .local v6, pos:I
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->shortOptions:[Ljava/lang/String;

    array-length v8, v8

    new-array v4, v8, [Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;

    .line 81
    .local v4, items:[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->shortOptions:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_2

    .line 87
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v8, Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;

    invoke-direct {v8, p0, v4}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;-><init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    invoke-virtual {p0, v5}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->setContentView(Landroid/view/View;)V

    .line 95
    return-void

    .line 82
    :cond_2
    iget-object v8, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->dataSource:Ledu/umich/PowerTutor/widget/DataSource;

    iget v9, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->level:I

    invoke-virtual {v8, v9, v2}, Ledu/umich/PowerTutor/widget/DataSource;->hasOption(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    new-instance v8, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;

    invoke-direct {v8, p0, v2}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;-><init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;I)V

    aput-object v8, v4, v6

    .line 84
    add-int/lit8 v7, v6, 0x1

    .end local v6           #pos:I
    .local v7, pos:I
    aget-object v8, v4, v6

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    move v6, v7

    .line 81
    .end local v7           #pos:I
    .restart local v6       #pos:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
