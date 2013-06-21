.class Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;
.super Ljava/lang/Object;
.source "ImagePreferenceArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;


# direct methods
.method constructor <init>(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;->this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;->this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    #getter for: Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->access$0(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;->this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    #getter for: Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->access$0(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;->this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->index:I
    invoke-static {v1, v0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->access$1(Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;I)V

    .line 48
    iget-object v0, p0, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter$1;->this$0:Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;

    invoke-virtual {v0}, Lcom/rookiestudio/customize/ImagePreferenceArrayAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
