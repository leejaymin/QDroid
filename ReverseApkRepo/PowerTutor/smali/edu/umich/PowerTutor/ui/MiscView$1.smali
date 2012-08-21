.class Ledu/umich/PowerTutor/ui/MiscView$1;
.super Landroid/widget/ArrayAdapter;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/MiscView;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Landroid/content/Context;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$1;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    iput-object p4, p0, Ledu/umich/PowerTutor/ui/MiscView$1;->val$listView:Landroid/widget/ListView;

    .line 86
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/MiscView$1;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/ui/MiscView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 89
    const v6, 0x7f030002

    iget-object v7, p0, Ledu/umich/PowerTutor/ui/MiscView$1;->val$listView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, itemView:Landroid/view/View;
    const v5, 0x7f080008

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f080009

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, summary:Landroid/widget/TextView;
    const v5, 0x7f08000a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 94
    .local v4, widgetGroup:Landroid/widget/LinearLayout;
    invoke-virtual {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;

    .line 95
    .local v0, item:Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
    invoke-virtual {v0, v3, v2, v4}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->initViews(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 96
    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->setupView()V

    .line 97
    return-object v1
.end method
