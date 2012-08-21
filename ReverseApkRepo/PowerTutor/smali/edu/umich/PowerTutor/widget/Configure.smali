.class public Ledu/umich/PowerTutor/widget/Configure;
.super Landroid/app/Activity;
.source "Configure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/widget/Configure$WidgetItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Configure"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;

.field private dataSource:[Ledu/umich/PowerTutor/widget/DataSource;

.field private items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

.field private widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/widget/Configure;->widgetId:I

    .line 45
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/DataSource;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/widget/Configure;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Ledu/umich/PowerTutor/widget/Configure;->widgetId:I

    return v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/Configure;->items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 136
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "data_source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/widget/DataSource;

    .line 139
    .local v0, dataSrc:Ledu/umich/PowerTutor/widget/DataSource;
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;

    aput-object v0, v2, p1

    .line 140
    iget-object v2, p0, Ledu/umich/PowerTutor/widget/Configure;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 142
    .end local v0           #dataSrc:Ledu/umich/PowerTutor/widget/DataSource;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v6}, Ledu/umich/PowerTutor/widget/Configure;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Ledu/umich/PowerTutor/widget/Configure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 62
    const-string v4, "appWidgetId"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ledu/umich/PowerTutor/widget/Configure;->widgetId:I

    .line 65
    :cond_0
    iget v4, p0, Ledu/umich/PowerTutor/widget/Configure;->widgetId:I

    if-nez v4, :cond_1

    .line 66
    invoke-virtual {p0}, Ledu/umich/PowerTutor/widget/Configure;->finish()V

    .line 69
    :cond_1
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/widget/Configure;->setContentView(I)V

    .line 70
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/widget/Configure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    new-instance v5, Ledu/umich/PowerTutor/widget/Configure$1;

    invoke-direct {v5, p0}, Ledu/umich/PowerTutor/widget/Configure$1;-><init>(Ledu/umich/PowerTutor/widget/Configure;)V

    .line 70
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/widget/Configure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 99
    new-instance v5, Ledu/umich/PowerTutor/widget/Configure$2;

    invoke-direct {v5, p0}, Ledu/umich/PowerTutor/widget/Configure$2;-><init>(Ledu/umich/PowerTutor/widget/Configure;)V

    .line 98
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v4, 0x7f080011

    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/widget/Configure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 106
    .local v3, listView:Landroid/widget/ListView;
    new-instance v4, Ledu/umich/PowerTutor/widget/Configure$3;

    invoke-direct {v4, p0, p0, v6, v3}, Ledu/umich/PowerTutor/widget/Configure$3;-><init>(Ledu/umich/PowerTutor/widget/Configure;Landroid/content/Context;ILandroid/widget/ListView;)V

    iput-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->adapter:Landroid/widget/ArrayAdapter;

    .line 118
    invoke-static {}, Ledu/umich/PowerTutor/widget/DataSource;->getDefaults()[Ledu/umich/PowerTutor/widget/DataSource;

    move-result-object v4

    iput-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->dataSource:[Ledu/umich/PowerTutor/widget/DataSource;

    .line 119
    new-array v4, v7, [Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    iput-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v7, :cond_2

    .line 125
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    new-instance v4, Ledu/umich/PowerTutor/widget/Configure$4;

    invoke-direct {v4, p0}, Ledu/umich/PowerTutor/widget/Configure$4;-><init>(Ledu/umich/PowerTutor/widget/Configure;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void

    .line 122
    :cond_2
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    new-instance v5, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    invoke-direct {v5, p0, v1}, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;-><init>(Ledu/umich/PowerTutor/widget/Configure;I)V

    aput-object v5, v4, v1

    .line 123
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/Configure;->adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Ledu/umich/PowerTutor/widget/Configure;->items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
