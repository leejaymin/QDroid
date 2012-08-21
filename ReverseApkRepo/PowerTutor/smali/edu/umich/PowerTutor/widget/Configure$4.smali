.class Ledu/umich/PowerTutor/widget/Configure$4;
.super Ljava/lang/Object;
.source "Configure.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/Configure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/Configure;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/Configure;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/Configure$4;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 129
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/Configure$4;->this$0:Ledu/umich/PowerTutor/widget/Configure;

    #getter for: Ledu/umich/PowerTutor/widget/Configure;->items:[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;
    invoke-static {v0}, Ledu/umich/PowerTutor/widget/Configure;->access$2(Ledu/umich/PowerTutor/widget/Configure;)[Ledu/umich/PowerTutor/widget/Configure$WidgetItem;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ledu/umich/PowerTutor/widget/Configure$WidgetItem;->onClick()V

    .line 130
    return-void
.end method
