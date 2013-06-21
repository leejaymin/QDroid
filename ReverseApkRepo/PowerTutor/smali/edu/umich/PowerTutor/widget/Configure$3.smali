.class Ledu/umich/PowerTutor/widget/Configure$3;
.super Landroid/widget/ArrayAdapter;
.source "Configure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/Configure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/Configure;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/Configure;Landroid/content/Context;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/Configure$3;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    iput-object p4, p0, Ledu/umich/PowerTutor/widget/Configure$3;->val$listView:Landroid/widget/ListView;

    .line 106
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
    .line 108
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/Configure$3;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/widget/Configure;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 109
    const v5, 0x7f030008

    iget-object v6, p0, Ledu/umich/PowerTutor/widget/Configure$3;->val$listView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, itemView:Landroid/view/View;
    const v4, 0x7f080008

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Ledu/umich/PowerTutor/widget/Configure$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    .line 113
    .local v0, item:Ledu/umich/PowerTutor/widget/Configure$WidgetItem;
    invoke-virtual {v0, v3, v2}, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->setupView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 114
    return-object v1
.end method
