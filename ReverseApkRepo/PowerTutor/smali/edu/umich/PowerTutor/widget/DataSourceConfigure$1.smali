.class Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;
.super Landroid/widget/ArrayAdapter;
.source "DataSourceConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/DataSourceConfigure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;Landroid/content/Context;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    iput-object p4, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;->val$listView:Landroid/widget/ListView;

    .line 67
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/widget/DataSourceConfigure;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 70
    const v5, 0x7f030008

    iget-object v6, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;->val$listView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, itemView:Landroid/view/View;
    const v4, 0x7f080008

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;

    .line 74
    .local v0, item:Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;
    invoke-virtual {v0, v3, v2}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->setupView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 75
    return-object v1
.end method
